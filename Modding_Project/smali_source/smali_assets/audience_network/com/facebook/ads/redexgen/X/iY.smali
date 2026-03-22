.class public abstract Lcom/facebook/ads/redexgen/X/iY;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/google/common/base/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2982
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "lKk5JaLmUx95KK"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "mYuNW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CjAKdLXppofA1D702KwO"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "uXJpTDaVRtNVAp70rLVfm"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "1hSAC5HvnjUxrHV2J"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "HaqnzSsBrGrjOCqNCVI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "GKVrteGYxon0I6T9VCiXJnLEHrJ03INP"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "n4WaWuAzWRB0VbcGBeRJywBcIsl3WCc7"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/iY;->A00:[Ljava/lang/String;

    return-void
.end method

.method public static A00(C)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 86477
    or-int/lit8 p0, p0, 0x20

    add-int/lit8 p0, p0, -0x61

    int-to-char p0, p0

    return p0
.end method

.method public static A01(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 86478
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 86479
    .local v0, "length":I
    const/4 v3, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v3, v4, :cond_4

    .line 86480
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iY;->A02(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86481
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 86482
    .local v2, "chars":[C
    :goto_1
    if-ge v3, v4, :cond_2

    .line 86483
    aget-char v1, v2, v3

    .line 86484
    .local v3, "c":C
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/iY;->A02(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86485
    xor-int/lit8 v0, v1, 0x20

    int-to-char v0, v0

    aput-char v0, v2, v3

    .line 86486
    .end local v3    # "c":C
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 86487
    .end local v2    # "chars":[C
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 86488
    :cond_2
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/iY;->A00:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/iY;->A00:[Ljava/lang/String;

    const-string v1, "jxLLbSZUx5pXLcCA85YTs8Y"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-object v3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 86489
    .end local v1    # "i":I
    :cond_4
    return-object p0
.end method

.method public static A02(C)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 86490
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A03(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s1",
            "s2"
        }
    .end annotation

    .line 86491
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 86492
    .local v0, "length":I
    const/4 v9, 0x1

    if-ne p0, p1, :cond_0

    .line 86493
    return v9

    .line 86494
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v8, 0x0

    if-eq v6, v0, :cond_1

    .line 86495
    return v8

    .line 86496
    :cond_1
    const/4 v5, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v5, v6, :cond_5

    .line 86497
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 86498
    .local v4, "c1":C
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 86499
    .local v5, "c2":C
    if-ne v0, v7, :cond_2

    .line 86500
    .end local v4    # "c1":C
    .end local v5    # "c2":C
    .end local v6
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 86501
    :cond_2
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iY;->A00(C)I

    move-result v4

    .line 86502
    .local v6, "alphaIndex":I
    const/16 v3, 0x1a

    sget-object v1, Lcom/facebook/ads/redexgen/X/iY;->A00:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x30

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/iY;->A00:[Ljava/lang/String;

    const-string v1, "1S1N8LGAQqFvlHlBSY2lJ7CUB7v0Wvcl"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ge v4, v3, :cond_4

    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/iY;->A00(C)I

    move-result v0

    if-ne v4, v0, :cond_4

    goto :goto_1

    .line 86503
    .restart local v4    # "c1":C
    .restart local v5    # "c2":C
    .restart local v6    # "alphaIndex":I
    :cond_4
    return v8

    .line 86504
    .end local v2    # "i":I
    .end local v4    # "c1":C
    .end local v5    # "c2":C
    .end local v6    # "alphaIndex":I
    :cond_5
    return v9
.end method
