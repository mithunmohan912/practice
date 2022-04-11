package dataStructure;

import java.util.Arrays;

import dataStructure.BSTViews.Node;

public class MaxHeap {

	public int getParent(int[] arr, int idx) {

		return (idx) / 2;
	}

	public void swap(int[] arr, int swapfrom, int swapto) {
		int temp = arr[swapfrom];
		arr[swapfrom] = arr[swapto];
		arr[swapto] = temp;

	}

	public int getLeftChild(int[] arr, int idx) {
		return (idx *2);
	}

	public int getRightChild(int[] arr, int idx) {
		return (idx * 2) + 1;
	}

	public boolean isleaf(int[] arr, int idx) {
		return idx > arr.length / 2 && idx < arr.length;

	}

	public void maxHeap(int[] arr, int currIdx) {

		if (isleaf(arr, currIdx)) {
			return;
		}
//		if (currIdx <= arr.length - 1) {

		if (getLeftChild(arr, currIdx)<arr.length && getRightChild(arr, currIdx)< arr.length  &&  (arr[currIdx] < arr[getLeftChild(arr, currIdx)] || arr[currIdx] < arr[getRightChild(arr, currIdx)])) {

			if (arr[getLeftChild(arr, currIdx)] > arr[getRightChild(arr, currIdx)]) {
				swap(arr, getLeftChild(arr, currIdx), currIdx);
				maxHeap(arr, getLeftChild(arr, currIdx));
			} else {
				swap(arr, getRightChild(arr, currIdx), currIdx);
				maxHeap(arr, getRightChild(arr, currIdx));
			}
		}
	}

	public static void main(String[] args) {
//		int[] arr = { 1, 2, 3, 4, 5, 6, 7, 8, 9 };
//		int[] arr = {1,4,2,5,13,6,17};
		int[] arr = {1,12,9,5,6,10};//{5,3,17,10,84,19,6,22,9};
		System.out.println("input: " + Arrays.toString(arr));
		
		for (int i = arr.length/2 - 1; i >= 0; i--) {
			new MaxHeap().maxHeap(arr, i);
		}
		System.out.println("output: " + Arrays.toString(arr));


	}

}
