library(TOSTER)
# tai chi vs resistance:
tsum_TOST(m1 = 2.3, m2 = 1.962, sd1 = 1.03, sd2 = 0.9, n1 = 205, n2 = 205, 
        eqb = .36, alpha = 0.05, var.equal = FALSE, paired = TRUE, eqbound_type = "raw", r12 = .5 )

#tai chi vs aerobic
tsum_TOST(m1 = 2.3, m2 = 1.98, sd1 = 1.03, sd2 = 1.08, n1 = 205, n2 = 205, 
          eqb = .36, alpha = 0.05, var.equal = FALSE, paired = TRUE, eqbound_type = "raw", r12 = .59 )

#tai chi vs lectures
tsum_TOST(m1 = 2.3, m2 = 1.74, sd1 = 1.03, sd2 = 0.94, n1 = 205, n2 = 205, 
          eqb = .36, alpha = 0.05, var.equal = FALSE, paired = TRUE, eqbound_type = "raw", r12 = .48 )

#tai chi vs stretch
tsum_TOST(m1 = 2.3, m2 = 1.93, sd1 = 1.03, sd2 = 1.07, n1 = 205, n2 = 205, 
          eqb = .36, alpha = 0.05, var.equal = FALSE, paired = TRUE, eqbound_type = "raw", r12 = .65 )

#tai chi vs relaxation
tsum_TOST(m1 = 2.3, m2 = 2.34, sd1 = 1.03, sd2 = 1.09, n1 = 205, n2 = 205, 
          eqb = .36, alpha = 0.05, var.equal = FALSE, paired = TRUE, eqbound_type = "raw", r12 = .78 )

#relaxation vs stretch
tsum_TOST(m1 = 2.34, m2 = 1.93, sd1 = 1.09, sd2 = 1.07, n1 = 205, n2 = 205, 
          eqb = .36, alpha = 0.05, var.equal = FALSE, paired = TRUE, eqbound_type = "raw", r12 = .74 )

#relaxation vs walking
tsum_TOST(m1 = 2.34, m2 = 1.98, sd1 = 1.09, sd2 = 1.08, n1 = 205, n2 = 205, 
          eqb = .36, alpha = 0.05, var.equal = FALSE, paired = TRUE, eqbound_type = "raw", r12 = .54 )

#relaxation vs resistance
tsum_TOST(m1 = 2.34, m2 = 1.62, sd1 = 1.09, sd2 = 0.91, n1 = 205, n2 = 205, 
          eqb = .36, alpha = 0.05, var.equal = FALSE, paired = TRUE, eqbound_type = "raw", r12 = .45 )

#relaxation vs lectures
tsum_TOST(m1 = 2.34, m2 = 1.74, sd1 = 1.09, sd2 = 0.94, n1 = 205, n2 = 205, 
          eqb = .36, alpha = 0.05, var.equal = FALSE, paired = TRUE, eqbound_type = "raw", r12 = .42 )

#stretch vs resistance
tsum_TOST(m1 = 1.93, m2 = 1.62, sd1 = 1.07, sd2 = 0.91, n1 = 205, n2 = 205, 
          eqb = .36, alpha = 0.05, var.equal = FALSE, paired = TRUE, eqbound_type = "raw", r12 = .74 )

#stretch vs lectures
tsum_TOST(m1 = 1.93, m2 = 1.74, sd1 = 1.07, sd2 = 0.94, n1 = 205, n2 = 205, 
          eqb = .36, alpha = 0.05, var.equal = FALSE, paired = TRUE, eqbound_type = "raw", r12 = .46 )

#resisitance vs aerobic
tsum_TOST(m1 = 1.62, m2 = 1.98, sd1 = 0.91, sd2 = 1.08, n1 = 205, n2 = 205, 
          eqb = .36, alpha = 0.05, var.equal = FALSE, paired = TRUE, eqbound_type = "raw", r12 = .64 )

#aerobic vs lectures
tsum_TOST(m1 = 1.98, m2 = 1.74, sd1 = 1.08, sd2 = 0.94, n1 = 205, n2 = 205, 
          eqb = .36, alpha = 0.05, var.equal = FALSE, paired = TRUE, eqbound_type = "raw", r12 = .5 )

