#import "@preview/metro:0.2.0": unit, declare-unit
#declare-unit("ppb", "ppb")

= Theory <sec:theory>

== Lung Cancer Biomarker in Human Breath

=== Human Breath

#figure(
    caption: [Atmospheric Exogenous Gases],
    table(
        columns: 2,
        table.header[Component][Concentration / #unit("percent")],
        [Nitrogen], [78],
        [Oxygen], [16],
        [Carbon oxide], [5],
        [Others], [1],
    )
) <tab:atmospheric_exogenous_gases>
// #cite(<haripriya_2023>)

#figure(
    caption: [Major exhaled breath metabolite VOCs],
    table(
        columns: 2,
        table.header[Endogenous VOC][Permissible level / #unit("ppb")],
        [Ammonia], [1000],
        [Acetone], [900],
        [Isoprene], [227],
        [Ethanol], [216],
        [Methanol], [216],
        [2-Propanol], [94.1],
        [Nonanal], [2.4],
    )
) <tab:breath_metabolite_VOCs>
// #cite(<haripriya_2023>)


== Factors Affecting Breath Composition

== Identification of Potential Lung Cancer Biomarkers

== Photoacoustics

When a thin pane is exposed to modulated sunlight, it begins to emit sound.
This effect was first discovered by A. G. Bell in 1880 and later published in the "Journal of the Franklin Institute" cite{bell_1881}.
He was also able to prove a connection between the wavelength of light and the resulting sound pressure (loudness) by using infrared and ultraviolet light in addition to visible light.
It was not until 100 years later, under the direction of A.~Rosencwaig at Bell Labs, that the theoretical basis for the effect, which had fallen into oblivion, was formulated cite{rosencwaig_1980}.
A representation of the sound pressure versus the wavelength of the light used is called a photoacoustic spectrum.

// \section{IR Spectroscopy}