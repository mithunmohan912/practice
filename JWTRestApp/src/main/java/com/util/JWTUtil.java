package com.util;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.function.Function;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.userdetails.UserDetails;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

public class JWTUtil implements Serializable{

	
	@Value("${jwt.secret}")
	private String jwtSecret;
	
	
	
	public boolean isTokenExpired(String token) {
		getExpirationDateFromJWT(token);
//		LocalDate.now().isBefore(other)
	}
	
	
	
	private Object getExpirationDateFromJWT(String token) {
		return getClaimFromToken(token, Claims::getExpiration);
	}
	
	
	private Object getClaimFromToken(String token, Function<Claims,Object> claimResolver) {
		Claims claims =  Jwts.parser().setSigningKey(jwtSecret).parseClaimsJws(token).getBody();
		return claimResolver.apply(claims);
	}

	public String generateToken(UserDetails  userDetails) {
		Map<String,Object> claims = new HashMap<>();
		return  doGenerateToken(claims, userDetails.getUsername());
	}
	
	private String doGenerateToken(Map<String, Object> claims, String subject) {
		return Jwts.builder().setClaims(claims).setSubject(subject).setIssuedAt(new Date()).setExpiration(new Date(System.currentTimeMillis() + 5*60*1000))
		.signWith(SignatureAlgorithm.RS256, jwtSecret).compact();
	}
	
	
}
