
<!-- README.md is generated from README.Rmd. Please edit that file -->

# paycheckr

<!-- badges: start -->
<!-- badges: end -->

paycheckr is a toy R package to help me with my personal finances. The
real aim behind paycheckr is for me to learn how to make R packages.

# Variable names

I have tried to name variables in a consistent format, referring to the
type of amount and the time interval it relates to.

“Pay” in English can be both a noun and a verb. In this package I have
tried not to use “pay” as a noun to mean the amount I am paid, and have
instead called this value “income”. This means “pay” can be used in
function names as a verb. For example, the “pay_pension” function
returns the amount of money I have to **pay** into my pension from my
**income**.

**Categories**: income, paye (PAYE - income tax), pension and ni
(National Insurance)

**Intervals**: daily, weekly, monthly, annual

**Modifiers**: taxable

**Variable format**: interval_category_modifier

**Examples**: weekly_ni, monthly_pension, annual_income_taxable
