import zlib, base64
exec(zlib.decompress(base64.b64decode('eJzNWW1v20YS/q5fwRMQmLRpmYzTQyHcFudLHCdx4qp2lVrwCcRGpGQyfAtJRbEN/ffuUhJnZrmS7aIH3AcB4s7Lzts+M0t2u93XWZLPq6A0qtvACH7kwaQKfGMRpkbBq8DIpkaWBkZZyafZncFnPEzLyuBpJgSKXrfb7Xy/+/3trz++/Cd6x8p5Ao+f2FselwEsvGZhKaV5OkGrGUvCFB5jxr+U8Lhg1TyPgZ37LC/CtIKFiJ3+mAR5FWaghees4OkMiU1Zwn/A44jFYYmUDFl1lwedaZElxiSLYxEGoa80wiTPispIeRL4K0P8YGo01n0wp6nV7zQLfsQelh2D8Pxm7jdkLpmNEKg+N0QkDRFuUCFZ0OMN8I7ZNCXaBGcRVPMi3cLfUcnRb9SBr2bDXUnb1uzuISxTgY8gMLKbv0MpS/gq4DupnW4ecwaUF66DSVNEEuuL2zAOEPUX5jo0ONOjI1arUKMwhSjl7SAg40YWY7r1oUX9/gNIA5LxCxB/Z0LsB/D3ZDzNChA4IdkejEUSd9FJ7IjWI4jWBTX2FIwt7SzPxRFOK6+cZEWAkvyqKX//Cpz4BKv3DOre3DsT/68qAQN79s1eravcs/fyIvjuSXXyYQ0TYU1Z3GYb+upvFSbBnnC30X9N9P8ulDT6Kx7Hd0LmlpeesF78S+eJV4iTWUoVxNu08Taqzxcvy0CcWYAdRIeSvbag2vGJjHhvvakRCPTC67VRYP4HiP+1WdOYY69lUTztxnLmKJa/0Vp2/pecaNmiGn4AG7StBKdxKZ4z5iLzEXezeOAqPn3GhkoWzw8ngZfNq0mWBGB6/HQv7y0d5w7dMixamMIurEoYMX4Fxo+YEUocMVeYQ9Q3Iv3REqb0U5IacSgQLQVa2vZQuIV7R8yYo/aTar2GVbpOA+dRZiKMOzpyHctGCwKPLdlUZOU/VctIarFbOnRG4WMWg4av0G1iAccv6c6jA3aMMfArHLu4Q/nA2k7jwpY9P+7cc6js+XHLnkO652M+72iexiMF6w9hdSS926IXs9G++xS12IErtbROX/zMUBzEDOijov8HkCrqzxtEMbTFBRx0IMHmf2ZAORWo8+JnyPEzFYGeNnremytcYFtSZQMaIBYMHZYNbZDgTbNqCzwAI97YG4xAcbIlLsDzZwVkJ0rL2zQyh7LN9WyN2jllD80abHwxGeMRR8w+sN4ephZA7YVVkJSmhXr8nCH1D27ftV+K37H4vRK/n8Tvn+K3RBLhTgnMGWg4j9ecx5jx2y7GtRFS4N8N2wcamQBSHdskSAoeH7qkgW4QehWzBxgd+u4Sof4t0+506No48A3hsr5kkKGxhAJ8T+bH201OpBlE5BxEZlKk2YqezQRse2Pq9juXp4vEIWndaS5rnegZ5thkzJzOVhrC1/cw0s9IcYKkZhq6pIn8ZtbH0FmdUdeeZTwWnc0h9X4OLr9HYS8YFRa7VcUdwZ8zMBeAxLEdChv1ggYk/KJGBgcAQVRADQQOQbB3f8cu7pZdVgEE4DiH+J7V4bIOdLR3K5p19FLAcn0fh3jOxPRmUKCuWCAAUZi2mp2A8KkhgOlQENUY8XLfDNAN2O05UCHKrfW2rv/1Zd4XapWx6zXbLPaaP2m2MNGpE7s16i4lxGHKFmmYMV4rAH6JDbrNZm1Y/WaK5d40THnsbV6/NIcuOlX0lQrS7+76uukXug/tLk2R0zuSrBt10oxBRQaVkdl4W0iqM97SYvUD6POUu+MtI5HVKk8eNeVZ8BDf+M7wbaQ1fKsgx3Nx5FzX0igqtNeaWANXMU3rORbUYdWj+cVZy7YE/BcmVfcNOEtO7ydlxvRHbS5X5RlqNHW0KSxpianFn6h+k6htbdOJLs5Rrlw6m6cFQ9ZFvr4Jgx4yTalvbRLgm+KqiHzcgGFraGw4yZ+1hZJgB5Bf1j7s2S6lBbxEHcmBgUTqvT5SpA3iekLLF+wG1gUe07d00QX2M+Kg4+Lm0B2rOKIeomj0hLsQKm9jg056pFDKzNjRmuh0JCzDVl2sOJCZOAYsqKmrQx9g+59fVEj2hN08rzJySynJXF+JMgvU2wFhPKEBjQbgxEDAdk3EWRy0s0guh3wKxg/WqbP+BVWnBveix/M8SFHDHdDI0OiD3ZJpkqVVmM6DuolgK9G7JSLfhJCP6EU8ulpNpjRSSlCJKqUQJ6zldit2CJMnAoi3B+XqgAlU3s/rZQq7E5GUR0T1Yq5OLOdlueZe92CqSuf6YLwy7LEMXXVImvMsN2lb3ZKlIWQpmuk6LOFt9xNKnsTCRYQBzZY82nzH8LwwDSvPA2vu0aRBsDy6Xw2sGC2VHVD/nz1tB6VlPeNF6U67CLX9Yle+3FrZJkYpYpoFt1ije/qdx3MuP5DJ74ODmN8FhfHgLPdK48FdPrxcrjkD33g4XtoCC8SRETKhb4g9vwhmIVbv3O2Jw5XwylSNlvOl3VrUXAmwwLjnefKLgudpROvjd9Pvm4eutb+vFbd1wbHUZJ799WRG1/+zZAZFkRVAvf67EimPmV9/HJ6KaGSLMJ0Z9V79/6YSGUSC+8bDq+X/aSb50FSDZGl1r0idUMZsRWWs63kJD1PP6/bJbW9vlM0LeWsz6utZ87VcBGK514qDvCxanT8Bu/mS4g==')))
# Created by pyminifier (https://github.com/liftoff/pyminifier)

