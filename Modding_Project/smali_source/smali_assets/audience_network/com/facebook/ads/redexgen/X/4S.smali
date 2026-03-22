.class public abstract Lcom/facebook/ads/redexgen/X/4S;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 295
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "7ZVLLLKotIssX7jIl4vcZbH2L8FdxFJV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "SxO2qeNEuV3f0DZtyJG1CBA8lii4pttK"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tZ3ZWPQHUjR7YcQrex4qppGHSv95fJPs"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "tGxcWQDnkHfhjSyxWcnIumjGlzcgaNzU"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "u1LglbRx5QWkMnO0PnxbrtbpZSVqvkfW"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Df2h2T1n3Ma5KhbTq7fRBbIZbgR3yEJ2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "bMIjl1KVP4eS7CUXJ3WtWMmLtshOtNUd"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "tvDgJhdkdCUqYfoEPuxkvSqWZaZJ8Ie3"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4S;->A00:[Ljava/lang/String;

    return-void
.end method

.method public static A00()V
    .locals 5

    .line 13299
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/2T;->A00:Z

    if-eqz v0, :cond_1

    sget v4, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v3, 0x12

    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A00:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A00:[Ljava/lang/String;

    const-string v1, "iUwdoG5qeVYPDF5bqwZgwnZjrQnFy6Jg"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "4uzT312piC2APoYDeL25SkVImiZpxCJZ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-lt v4, v3, :cond_1

    .line 13300
    invoke-static {}, Lcom/facebook/ads/redexgen/X/4S;->A01()V

    .line 13301
    :cond_1
    return-void
.end method

.method public static A01()V
    .locals 0

    .line 13302
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 13303
    return-void
.end method

.method public static A02(Ljava/lang/String;)V
    .locals 2

    .line 13304
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/2T;->A00:Z

    if-eqz v0, :cond_0

    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x12

    if-lt v1, v0, :cond_0

    .line 13305
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/4S;->A03(Ljava/lang/String;)V

    .line 13306
    :cond_0
    return-void
.end method

.method public static A03(Ljava/lang/String;)V
    .locals 0

    .line 13307
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 13308
    return-void
.end method
