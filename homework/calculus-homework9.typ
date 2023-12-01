#import "../template.typ": *

#show: project.with(
  title: "Calculus Homework #9",
  authors: ((
    name: "Yulun Wu (#47)",
    email: "memset0@outlook.com",
    phone: "3230104585"
  ),),
  date: "November 28, 2023",
)

= P149 习题3-3 2(1)
#prob[写出 $f(x) = arcsin x$ 在 $x=0$ 处的三阶泰勒公式。]

$ f(x) = x + R_3(x) $
其中 $R_3 (x) = display((2x^2-1)/((1+x^2)^(5/2)))$。

= P150 习题3-3 2(3)
#prob[写出 $f(x) = sin x$ 在 $x=display(pi/2)$ 处的 $2n$ 阶泰勒公式。]

$ f(x)
&= f(pi/2) + sum_(i=1)^(2n) (f^((i))(pi/2))/(i!) x^i + R_(2n) (x)\
&= f(pi/2) + sum_(i=1)^(2n) (sin((i+1)/2 pi))/(i!) x^i + R_(2n) (x)\
&= sum_(i=0)^(n) ((-1)^i)/((2i)!) x^(2i) + R_(2n) (x)
$

其中 $display(R_(2n) (x) = sin(x+(2n+1)/2 pi)/((2n+1)!) (x-pi/2)^(n+1) = ((-1)^n cos(x))/((2n+1)!) (x-pi/2)^(n+1))$。

= P150 习题3-3 4
#prob[
	利用基本函数的泰勒公式将下列函数展开成具有佩亚诺余项的泰勒公式：

	(1) $f(x) = e^x$，在 $x=1$ 处，$n$ 阶。
]

$ f(x) = e + e (x-1) + e/2! (x-1)^2 + dots.c + e/n! (x-1)^n + o((x-1)^n) $

#prob[(2) $display(f(x) = ln (1-x)/(1+x))$，在 $x=0$ 处，$2n$ 阶。]

$
f(x)
&= ln(1-x) - ln(1+x)\
&= sum_(i=1)^(2n) (((-x)^i (-1)^(i+1))/i + (x^i (-1)^(i+1))/i) + o(x^(2n+1))\
&= - sum_(i=1)^n (x^(2i))/i + o(x^(2n+1))
$

= P150 习题3-3 5(1)
#prob[利用泰勒公式近似地计算 $root(5,250)$，并估计误差。]

= P150 习题3-3 5(3)
#prob[利用泰勒公式近似地计算 $sin 18 degree$，并估计误差。]

= P150 习题3-3 7(1)
#prob[利用泰勒公式求极限：$ lim_(x->+oo) x^(3/2) (sqrt(x+1) + sqrt(x-1) - 2 sqrt(x)) $]

$ "原式"
&= lim_(x->+oo) x^2 (sqrt(1+1/x) + sqrt(1-1/x) - 2)\
&= lim_(x->0) (sqrt(1+x) + sqrt(1-x) - 2)/(x^2)\
&= lim_(x->0) ((1+1/2 x-1/8 x^2 + o(x^2)) + (1 + 1/2(-x) - 1/8 (-x)^2 + o(x^2)) - 2)/x^2\
&= lim_(x->0) (-1/4 x^2)/x^2 = -1/4
$

= P150 习题3-3 7(3)
#prob[利用泰勒公式求极限：$ lim_(x->+oo) [(x^3-x^2+x/2) e^(1/x) - sqrt(x^6+1)] $]


= P150 习题3-3 9
#prob[
	设 $f(x)$ 在 $[0,1]$ 上具有二阶导数，且满足条件 $|f(x)|<=a$，$|f''(x)|<=b$，其中 $a,b$ 都是非负数，$c$ 是 $(0,1)$ 内任意一点。

	(1) 写出 $f(x)$ 在 $x=c$ 处带有拉格朗日余项的一阶泰勒公式；

	(2) 证明：$display(|f'(c)|<=2a + b/2)$。
]

= P129 习题3-1 12(1)
#prob[讨论 $y=3x^4 - 4x^3 + 1$ 的单调性。]

$y' = 12 x^3 - 12 x^2 = 12 x^2(x-1)$。令 $y'=0$，得 $x=0,sp x=1$。

故 $y$ 的单调增区间为 $(1,+oo)$，单调减区间为 $(-oo,1)$。

= P129 习题3-1 12(4)
#prob[讨论 $y=x-ln(1+x)$ 的单调性。]

$y' = 1-display(1/(1+x))=display(x/(1+x))$。令 $y'=0$，得 $x=0$；且当 $x=-1$ 时导数不存在。

故 $y$ 的单调增区间为 $(-oo,-1),(0,+oo)$，单调减区间为 $(-1,0)$。

= P129 习题3-1 13(3)
#prof[求函数 $y=x+e^(-x)$ 的极值。]

$y' = 1-e^(-x)$。令 $y'=0$ 得 $x=0$，所以当 $x=0$ 时原函数取到极小值 $1$。

= P129 习题3-1 13(6)
#prof[求函数 $y=(x+1)^(2/3)(x-2)^2$ 的极值。]

$ y'
&= 2/3 (x+1)^(-1/3) (x-2)^2 + 2(x+1)^(2/3) (x-2)\
&= (x-2)/root(3,x+1) (2/3(x-2) + 2(x+1))\
&= (2(x-2)(4x+1))/(3 root(3,x+1))
$

令 $y'=0$，得到 $x=2,sp x=-display(1/4)$ 且当 $x=-1$ 时 $y'$ 不存在。

故 $y$ 的单调增区间为 $(-1,-display(1/4)),(2,+oo)$，单调减区间为 $(-oo,-1),(-display(1/4),2)$。

= P130 习题3-1 16(2)
#prof[证明不等式：当 $x>0$ 时，$display(x-x^2/2 < ln(1+x) < x)$。]

= P130 习题3-1 16(4)
#prof[证明不等式：当 $x>0$ 时，$display(2/(2x+1) < ln(1+1/x) < 1/sqrt(x^2+x))$。]

= P130 习题3-1 19
#prof[
	设 $f(x)$ 在 $[0,1]$ 上连续，$(0,1)$ 内二阶可导，过点 $A(0,f(0))$ 与 $B(1,f(1))$ 的直线与曲线 $y=f(x)$ 相交于点 $(c,f(c))$，其中 $0<c<1$。证明：在 $(0,1)$ 内至少存在一点 $xi$，使 $f''(xi) = 0$。
]

= P187 第三章综合题 17
#prob[试证：当 $x>0$ 时，$(x^2-1) ln x >= (x-1)^2$。]