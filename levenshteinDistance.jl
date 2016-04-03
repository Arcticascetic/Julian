module levenshteinDistances

export levenshteinDistance

function levenshteinDistance(s, t)
    # Based on the code from Wikipedia
    # degenerate cases
    if (s == t) return 0 end
    if (length(s) == 0) return length(t) end
    if (length(t) == 0) return length(s) end

    # initialize v0 (the previous row of distances)
    # this row is A[0][i]: edit distance for an empty s
    # the distance is just the number of characters to delete from t
    v0 = collect(0:(length(t)))
    v1 = zeros(typeof(v0[1]), size(v0))

    for i = 1:length(s)
        # calculate v2 (current row distances) from the previous row v0
        # first element of v1 is A[i+1][0]
        #   edit distance is delete (i+1) chars from s to match empty t
        v1[1] = i;
        # use formula to fill in the rest of the row
		for j = 1:length(t)
			cost = s[i] != t[j]
			v1[j + 1] = minimum([v1[j] + 1, v0[j + 1] + 1, v0[j] + cost])
		end

		v0 = copy(v1)
	end
    return v1[length(t)+1]
end
