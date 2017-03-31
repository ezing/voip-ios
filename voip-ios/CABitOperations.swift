//
//  CABitOperations.swift
//  aurioTouch
//
//  Translated by OOPer in cooperation with shlab.jp, on 2015/1/29.
//
//
/*
 Copyright (C) 2016 Apple Inc. All Rights Reserved.
 See LICENSE.txt for this sample’s licensing information
 
 Abstract:
 Part of CoreAudio Utility Classes
 */

import Foundation

// return whether a number is a power of two
func isPowerOfTwo(_ x: UInt32) -> Bool {
    return (x & (x-1)) == 0
}

// count the leading zeros in a word
func countLeadingZeroes(_ arg: UInt32) -> UInt32 {
    var bitMask: Int32 = -0x8000_0000
    for i in 0..<32 {
        if UInt32(bitPattern: bitMask) & arg != 0 {
            return UInt32(i)
        }
        bitMask >>= 1
    }
    return 32
}

// base 2 log of next power of two greater or equal to x
func log2Ceil(_ x: UInt32) -> UInt32 {
    return 32 - countLeadingZeroes(x - 1);
}
