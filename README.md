
# Lab 1 : CEG 3400 Intro to Cyber Security

## Name: Caitlin Angstadt

### Task 1: Hashing

NOTE: I messed up and did not clone the SSH at first. All my work was 
	moved to the new clone. This is why there aren't 10 commits. 

**Reminder Deliverable:** Is your `salted-data.csv` in this repository?

Answer the following in this file:

* How many unique users are in the data?

42

* How many salts did you create?

42

* How many possible combinations will I need to try to figure out the secret ID
  of all students (assume I know all potential secret IDs and have your 
  `salted-data.csv)

1764

* Instead of salts, if you were to use a nonce (unique number for each hashed
  field) how many possible combinations would I need to try?

176400000

* Given the above, if this quiz data were *actual* class data, say for example
  your final exam, how would you store this dataset?  Why?

I would store the data with salted hashes. Nonces may be harder to break into, but you 
would still need to be able to access that data.

```bash
sort quiz_data.csv | awk '{print $1}' | uniq -c | wc -l (did this to see how many unique names there were)
```

---

### Task 2: Crypto Mining

**Reminder Deliverable:** Is your "mining" code in this repository (`mining/`)?
**Reminder Deliverable:** Is your nonce + word combos in `coins.txt`?

Answer the following:

* Paste your ***nonce+word(s) and hash(s)*** below ( either 3x `000` hashes or 1x `0000`
hash)

97Kiwi  000317d693eb0bbd27b5050ace51efef66b1a506523a1fa642c80eb4cbd7cce0
70Jackfruit  0008079ad37787e1c986823964c4e967e498eb142ed50ecb97fe11203fd909e0
53Argentina  00029de4cbe5121dd28ffaea1273ccf1851122e2bb55c70ba0b066d7b6e6f7da

```

* How many words were in your dictionary?

78 words

* How many nonces did your code iterate over?

91

* What was the maximum number of hashes your code *could* compute given the above?

7098

* What did you think about Task 2?

I preferred it over Task 1, but that's only because I just manually hashed all the values for Task 1. 
I really wanted to get a 5 0 hash and I had tried a sequence from 10-1000 with other lists, but running 
it took quite a but of time and I ended up not finding one.

* Is there a better way than brute force to attempt to get higher valued coins?

I don't believe so.

* Why or why not?

I say this because there isn't a pattern to getting the 0's in the front of the hash. 
It's just a lucky guess or using a script that takes up time if you want to try many different combinations. 
Trial and error


```bash
 match=$(echo "$hashval" | awk ' /^[0]{3,}/') (struggled because I have not used awk in a long time)
```

