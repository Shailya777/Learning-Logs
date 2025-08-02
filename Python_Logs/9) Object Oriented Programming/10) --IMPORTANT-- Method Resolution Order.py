"""
===============================
📘 Python MRO (Method Resolution Order)
===============================

🔹 MRO defines the order in which base classes are searched when executing a method.
🔹 Python uses C3 Linearization to determine MRO.
🔹 Use: ClassName.__mro__, ClassName.mro(), or help(ClassName) to view it.

==================
✅ RULES OF MRO
==================
1. Child class is always checked before parents.
2. The order of base classes in the class definition is respected.
3. No base class is checked before its subclasses (C3 Linearization).
4. In multiple inheritance, use cooperative constructors with super() and **kwargs.

=======================
🧪 SIMPLE MRO EXAMPLE
=======================
class A:
    def show(self): print("A")

class B(A):
    def show(self): print("B")

class C(A):
    def show(self): print("C")

class D(B, C):
    pass

d = D()
d.show()  # Output: B
print(D.__mro__)  # (D, B, C, A, object)

=======================
🧨 DIAMOND PROBLEM FIXED
=======================
class A:
    def show(self): print("A")

class B(A): pass
class C(A): pass

class D(B, C): pass

# MRO: D → B → C → A → object
# A is called only once

==============================
✅ COOPERATIVE MULTIPLE INHERITANCE
==============================
class University:
    def __init__(self, u_name, **kwargs):
        super().__init__(**kwargs)
        self.u_name = u_name

class Grants:
    def __init__(self, g_name, **kwargs):
        super().__init__(**kwargs)
        self.g_name = g_name

class Student(University, Grants):
    def __init__(self, f_name, u_name, g_name):
        super().__init__(u_name=u_name, g_name=g_name)
        self.f_name = f_name

s = Student("Bruce", "Nirma University", "R&D")
print(s.u_name)  # Nirma University
print(s.g_name)  # R&D

===========================
🧩 ADVANCED MRO HIERARCHY
===========================

class Z:
    def show(self): print("Z")

class B1(Z): pass
class A1(Z): pass

class B2(B1): pass
class A2(A1): pass
class A3(A2): pass

class C(B2, A3): pass

print(C.__mro__)
# Output:
# (<class '__main__.C'>,
#  <class '__main__.B2'>,
#  <class '__main__.B1'>,
#  <class '__main__.A3'>,
#  <class '__main__.A2'>,
#  <class '__main__.A1'>,
#  <class '__main__.Z'>,
#  <class 'object'>)

# MRO follows:
# C → B2 → B1 → A3 → A2 → A1 → Z → object

==================
⚠️ Common Mistakes
==================
- Using multiple super().__init__() calls: ❌ Wrong in multiple inheritance.
- Passing multiple positional args to super(): ❌ Use keyword args with **kwargs.
- Forgetting to call super().__init__() in base class: ❌ Breaks the cooperative chain.

==================
🔍 TIPS
==================
- Always use keyword arguments + **kwargs in multi-parent classes.
- Use super() and let Python’s MRO do the method chaining.
- Use print(ClassName.__mro__) to debug resolution path.

"""