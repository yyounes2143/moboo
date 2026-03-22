.class public final Lcom/facebook/ads/redexgen/X/kT;
.super Lcom/facebook/ads/redexgen/X/Iz;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/kU;
    }
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Gh;

.field public A01:Lcom/facebook/ads/redexgen/X/kU;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3053
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "WZkrugZ9k"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "x4SWtznAL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HpTT9hwXiF"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "GejxPsVIqdMqn4uNSueU2CvK5QdcE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "kY6PJZpIMUpeuimCFjYxSQzMMPc04"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "AyPx1MENxNPCbM7HZGi1kOnAmMtkHxm9"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "mMmHuZ9NaaUgibHMJoRcA4q0AdWca5ys"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Hii3DdXYVzyt8ReiNrO7wglp0i"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/kT;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 92215
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Iz;-><init>()V

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/4J;)I
    .locals 4

    .line 92216
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    const/4 v0, 0x2

    aget-byte v0, v1, v0

    and-int/lit16 v3, v0, 0xff

    const/4 v1, 0x4

    shr-int/2addr v3, v1

    .line 92217
    .local v0, "blockSizeKey":I
    const/4 v0, 0x6

    if-eq v3, v0, :cond_0

    const/4 v0, 0x7

    if-ne v3, v0, :cond_1

    .line 92218
    :cond_0
    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/kT;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    .line 92219
    sget-object v2, Lcom/facebook/ads/redexgen/X/kT;->A02:[Ljava/lang/String;

    const-string v1, "Cisj8wK8S"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "koTyuZ08X"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0S()J

    .line 92220
    :cond_1
    invoke-static {p1, v3}, Lcom/facebook/ads/redexgen/X/Gd;->A00(Lcom/facebook/ads/redexgen/X/4J;I)I

    move-result v1

    .line 92221
    .local v1, "result":I
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 92222
    return v1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/4J;)Z
    .locals 4

    .line 92223
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v1

    const/4 v0, 0x5

    if-lt v1, v0, :cond_0

    .line 92224
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v1

    const/16 v0, 0x7f

    if-ne v1, v0, :cond_0

    .line 92225
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0Q()J

    move-result-wide v3

    const-wide/32 v1, 0x464c4143

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 92226
    :goto_0
    return v0

    .line 92227
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A02([B)Z
    .locals 3

    .line 92228
    const/4 v2, 0x0

    aget-byte v1, p0, v2

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method


# virtual methods
.method public final A09(Lcom/facebook/ads/redexgen/X/4J;)J
    .locals 2

    .line 92229
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/kT;->A02([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92230
    const-wide/16 v0, -0x1

    return-wide v0

    .line 92231
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/kT;->A00(Lcom/facebook/ads/redexgen/X/4J;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final A0B(Z)V
    .locals 1

    .line 92232
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Iz;->A0B(Z)V

    .line 92233
    if-eqz p1, :cond_0

    .line 92234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kT;->A00:Lcom/facebook/ads/redexgen/X/Gh;

    .line 92235
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kT;->A01:Lcom/facebook/ads/redexgen/X/kU;

    .line 92236
    :cond_0
    return-void
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/4J;JLcom/facebook/ads/redexgen/X/Iy;)Z
    .locals 7
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation

    .line 92237
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v6

    .line 92238
    .local v0, "data":[B
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/kT;->A00:Lcom/facebook/ads/redexgen/X/Gh;

    .line 92239
    .local v1, "streamMetadata":Lcom/facebook/ads/redexgen/X/Gh;
    const/4 v3, 0x1

    if-nez v5, :cond_0

    .line 92240
    const/16 v0, 0x11

    new-instance v2, Lcom/facebook/ads/redexgen/X/Gh;

    invoke-direct {v2, v6, v0}, Lcom/facebook/ads/redexgen/X/Gh;-><init>([BI)V

    .line 92241
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/kT;->A00:Lcom/facebook/ads/redexgen/X/Gh;

    .line 92242
    const/16 v1, 0x9

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    invoke-static {v6, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 92243
    .local v3, "metadata":[B
    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gh;->A08([BLcom/facebook/ads/androidx/media3/common/Metadata;)Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    iput-object v0, p4, Lcom/facebook/ads/redexgen/X/Iy;->A00:Lcom/facebook/ads/redexgen/X/or;

    .line 92244
    return v3

    .line 92245
    .end local v3    # "metadata":[B
    :cond_0
    const/4 v4, 0x0

    aget-byte v0, v6, v4

    and-int/lit8 v1, v0, 0x7f

    const/4 v0, 0x3

    if-ne v1, v0, :cond_1

    .line 92246
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Gf;->A03(Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/Gg;

    move-result-object v2

    .line 92247
    .local v3, "seekTable":Lcom/facebook/ads/redexgen/X/Gg;
    invoke-virtual {v5, v2}, Lcom/facebook/ads/redexgen/X/Gh;->A09(Lcom/facebook/ads/redexgen/X/Gg;)Lcom/facebook/ads/redexgen/X/Gh;

    move-result-object v1

    .line 92248
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/kT;->A00:Lcom/facebook/ads/redexgen/X/Gh;

    .line 92249
    new-instance v0, Lcom/facebook/ads/redexgen/X/kU;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/kU;-><init>(Lcom/facebook/ads/redexgen/X/Gh;Lcom/facebook/ads/redexgen/X/Gg;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kT;->A01:Lcom/facebook/ads/redexgen/X/kU;

    .line 92250
    return v3

    .line 92251
    .end local v3    # "seekTable":Lcom/facebook/ads/redexgen/X/Gg;
    :cond_1
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/kT;->A02([B)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 92252
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kT;->A01:Lcom/facebook/ads/redexgen/X/kU;

    if-eqz v0, :cond_2

    .line 92253
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kT;->A01:Lcom/facebook/ads/redexgen/X/kU;

    invoke-virtual {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/kU;->A00(J)V

    .line 92254
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kT;->A01:Lcom/facebook/ads/redexgen/X/kU;

    iput-object v0, p4, Lcom/facebook/ads/redexgen/X/Iy;->A01:Lcom/facebook/ads/redexgen/X/Iw;

    .line 92255
    :cond_2
    iget-object v3, p4, Lcom/facebook/ads/redexgen/X/Iy;->A00:Lcom/facebook/ads/redexgen/X/or;

    sget-object v2, Lcom/facebook/ads/redexgen/X/kT;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/kT;->A02:[Ljava/lang/String;

    const-string v1, "zwTfeKiQLRobCpiZaAgtU0oyP8s29"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "wrCWS6iAkk"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92256
    return v4

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 92257
    :cond_4
    return v3
.end method
