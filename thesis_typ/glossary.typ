#import "@preview/metro:0.2.0": unit, declare-unit

/ Absorbance:
  ($A$) is a dimensionless quantity that describes to what extent a material absorbs light at a given wavelength.

/ Molar absorption coefficient:
  ($epsilon_"mol"$ in #unit("meter^2 per mol")) or molar attenuation coefficient is a measurement of how strongly a chemical species absorbs light at a given wavelength.

/ Molar concentration:
  ($c_"mol"$ in #unit("mol per meter^3")) or molarity, is a measure of the concentration of a chemical species, in particular of a solute in a solution, in terms of amount of substance per unit volume of solution.

/ Beer–Lambert law:
  The absorbance of a material that has only one absorbing species also depends on the pathlength and the concentration of the species, according to the Beer–Lambert law
  $
    A = epsilon c l ,
  $

  where
  / $epsilon$: is the molar absorption coefficient of that material;
  / $c$: is the molar concentration of those species;
  / $l$: is the path length.

Different disciplines have different conventions as to whether absorbance is decadic (10-based) or Napierian (e-based), i.e., defined with respect to the transmission via common logarithm (log10) or a natural logarithm (ln). The molar absorption coefficient is usually decadic.[1][4] When ambiguity exists, it is best to indicate which one applies.

When there are $N$ absorbing species in a solution, the overall absorbance is the sum of the absorbances for each individual species i:
$
  A = sum_(i=1)^N A_i = l sum _(i=1)^N epsilon _i c_i.
$