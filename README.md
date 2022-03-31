# Weakified Containers Test

**xcodebuild / xcodetest:** \
[![Build Status](https://app.bitrise.io/app/b5d41158fbd04acc/status.svg?token=7CL-MZcUSkFwPV1XwkmNrQ&branch=main)](https://app.bitrise.io/app/b5d41158fbd04acc)

**Goal:** \
Test different wrappers holding weak references to reftype objects

**Hypothesis Formal Proof Method:** \
Unit-Testing via `XCTest` (passing, see Bitrise)

**Test Subjects:** \
- `class` type wrapper (see `WeakIfied.swift`)
- `NSHashTable` (see `NSHashTableWeakTests.swift`)
- `@propertyWrapper` (see `PropertyWrapperWeakContainer.swift`)
- `NSpointerArray` imp (see `WeakPointerArray.swift`)
- functional-style (see `FunctionalWeakifiedTests.swift`)
