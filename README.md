# Weakified Containers Test

[![Build Status](https://app.bitrise.io/app/93e1ff4707ad61aa/status.svg?token=E5UNUKCFuSN_2_o4Zc3zHw&branch=main)](https://app.bitrise.io/app/93e1ff4707ad61aa)

**Goal:** Test different wrappers holding weak references to reftype objects

**Hypothesis Formal Proof Method**: Unit-Testing via `XCTest` (passing, see Bitrise)

**Test Subjects:**
- `class` type wrapper (see `WeakIfied.swift`)
- `NSHashTable` (see `NSHashTableWeakTests.swift`)
- `@propertyWrapper` (see `PropertyWrapperWeakContainer.swift`)
- `NSpointerArray` imp (see `WeakPointerArray.swift`)
- functional-style (see `FunctionalWeakifiedTests.swift`)
