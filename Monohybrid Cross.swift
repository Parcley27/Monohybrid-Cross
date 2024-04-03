// Create counters for each possible genotype
var GG = 0
var Gb = 0
var bb = 0

// 1,000,000 total offspring
let offspring = 1_000_000

// Will be used to check if a gene is recessive or dominant
let dominant = true
let recessive = false

// Do the following for each offspring
for _ in 1 ... offspring {
    // Pick random genes
    let geneA = Bool.random()
    let geneB = Bool.random()
    
    // If both genes are dominant, add 1 to GG counter
    if geneA == dominant && geneB == dominant {
        GG += 1
    
    // If one of the genes is dominant, add 1 to the Gb counter
    } else if geneA == dominant || geneB == dominant {
        Gb += 1
    
    // If none of the genes are dominant, add 1 to the bb counter
    } else {
        bb += 1
        
    }
}

// Display results as a ratio
print("\(GG):\(Gb):\(bb)")

// Find percentages for each genotype
// WARNING: Swift rounds down, so you may need to adjust percentages
let GGPercentage = 100 * GG/offspring
let GbPercentage = 100 * Gb/offspring
let bbPercentage = 100 * bb/offspring

// Display results as a percentage
print("\(GGPercentage)%:\(GbPercentage)%:\(bbPercentage)%")
