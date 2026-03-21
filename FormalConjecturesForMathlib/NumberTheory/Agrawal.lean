/-
Copyright 2025 The Formal Conjectures Authors.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    https://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
-/
module

import Mathlib.Data.ZMod.Basic
import Mathlib.RingTheory.Polynomial.Quotient

open Polynomial

/--
Agrawal's Conjecture:
If (X-1)^n ≡ X^n - 1 (mod n, X^r - 1), then n is prime or n^2 ≡ 1 (mod r).
-/

theorem AgrawalConjecture (n r : ℕ) (hn : n > 1) (hr : r > 0) (h_coprime : Nat.gcd n r = 1) :
  let R := Polynomial (ZMod n)
  let I : Ideal R := Ideal.span {X^r - 1}
  Ideal.Quotient.mk I ((X - 1)^n) = Ideal.Quotient.mk I (X^n - 1) →
  (Nat.Prime n ∨ (n^2 : ZMod r) = 1) :=
by
  sorry
