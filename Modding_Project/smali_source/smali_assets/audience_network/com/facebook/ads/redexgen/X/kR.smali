.class public final Lcom/facebook/ads/redexgen/X/kR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GX;


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;

.field public static final A05:Lcom/facebook/ads/redexgen/X/Gb;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/GY;

.field public A01:Lcom/facebook/ads/redexgen/X/Iz;

.field public A02:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3052
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "IFBRawCVF0AWJOiiVagp2bzm1iWWQKSj"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "auHMqC8YUXWsvqiTg7"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "x05hwyQceYKgfv4KdHsaZDzMFYGIFABO"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "EiWauAjA92n8uYBsDF1eTop4V9uY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "nHLlm8XHOjaWHtwU5p4BIc0GM3UweWlu"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "dBwF9hq9j3gGLabp"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "n4a5QuSOEmxq5i2DA2"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Zy0ftHIbrTR5qGqkd"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/kR;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/kR;->A02()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/kS;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/kS;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/kR;->A05:Lcom/facebook/ads/redexgen/X/Gb;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 92175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/4J;
    .locals 1

    .line 92176
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 92177
    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/kR;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/kR;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/kR;->A04:[Ljava/lang/String;

    const-string v1, "IEdap1c7a0gADNuxefg"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_0

    aget-byte v0, p1, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x24

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/kR;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x60t
        0x47t
        0x4ft
        0x4at
        0x43t
        0x42t
        0x6t
        0x52t
        0x49t
        0x6t
        0x42t
        0x43t
        0x52t
        0x43t
        0x54t
        0x4bt
        0x4ft
        0x48t
        0x43t
        0x6t
        0x44t
        0x4ft
        0x52t
        0x55t
        0x52t
        0x54t
        0x43t
        0x47t
        0x4bt
        0x6t
        0x52t
        0x5ft
        0x56t
        0x43t
    .end array-data
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/lN;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "streamReader"
        }
        result = true
    .end annotation

    .line 92178
    new-instance v2, Lcom/facebook/ads/redexgen/X/Iv;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/Iv;-><init>()V

    .line 92179
    .local v0, "header":Lcom/facebook/ads/redexgen/X/Iv;
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/facebook/ads/redexgen/X/Iv;->A05(Lcom/facebook/ads/redexgen/X/lN;Z)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget v1, v2, Lcom/facebook/ads/redexgen/X/Iv;->A04:I

    const/4 v0, 0x2

    and-int/2addr v1, v0

    if-eq v1, v0, :cond_1

    .line 92180
    .end local v2
    .end local v4
    :cond_0
    return v4

    .line 92181
    :cond_1
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Iv;->A00:I

    const/16 v0, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 92182
    .local v2, "length":I
    new-instance v1, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    .line 92183
    .local v4, "scratch":Lcom/facebook/ads/redexgen/X/4J;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    invoke-interface {p1, v0, v4, v2}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 92184
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/kR;->A00(Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/4J;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/kT;->A01(Lcom/facebook/ads/redexgen/X/4J;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92185
    new-instance v0, Lcom/facebook/ads/redexgen/X/kT;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/kT;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kR;->A01:Lcom/facebook/ads/redexgen/X/Iz;

    .line 92186
    :goto_0
    return v3

    .line 92187
    :cond_2
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/kR;->A00(Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/4J;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/kO;->A06(Lcom/facebook/ads/redexgen/X/4J;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92188
    new-instance v0, Lcom/facebook/ads/redexgen/X/kO;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/kO;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kR;->A01:Lcom/facebook/ads/redexgen/X/Iz;

    goto :goto_0

    .line 92189
    :cond_3
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/kR;->A00(Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/4J;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/kQ;->A02(Lcom/facebook/ads/redexgen/X/4J;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 92190
    new-instance v0, Lcom/facebook/ads/redexgen/X/kQ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/kQ;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kR;->A01:Lcom/facebook/ads/redexgen/X/Iz;

    goto :goto_0

    .line 92191
    :cond_4
    return v4
.end method

.method public static synthetic A04()[Lcom/facebook/ads/redexgen/X/GX;
    .locals 3

    .line 92192
    const/4 v0, 0x1

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/GX;

    new-instance v1, Lcom/facebook/ads/redexgen/X/kR;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/kR;-><init>()V

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v2
.end method


# virtual methods
.method public final AA4(Lcom/facebook/ads/redexgen/X/GY;)V
    .locals 0

    .line 92193
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/kR;->A00:Lcom/facebook/ads/redexgen/X/GY;

    .line 92194
    return-void
.end method

.method public final AGb(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92195
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kR;->A00:Lcom/facebook/ads/redexgen/X/GY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92196
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kR;->A01:Lcom/facebook/ads/redexgen/X/Iz;

    if-nez v0, :cond_0

    .line 92197
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/kR;->A03(Lcom/facebook/ads/redexgen/X/lN;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92198
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 92199
    :cond_0
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/kR;->A02:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/kR;->A04:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x55

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/kR;->A04:[Ljava/lang/String;

    const-string v1, "ISTJLhLpuA8o4P7J"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v3, :cond_1

    .line 92200
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kR;->A00:Lcom/facebook/ads/redexgen/X/GY;

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/GY;->AJh(II)Lcom/facebook/ads/redexgen/X/H1;

    move-result-object v2

    .line 92201
    .local v0, "trackOutput":Lcom/facebook/ads/redexgen/X/H1;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kR;->A00:Lcom/facebook/ads/redexgen/X/GY;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GY;->A6G()V

    .line 92202
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kR;->A01:Lcom/facebook/ads/redexgen/X/Iz;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kR;->A00:Lcom/facebook/ads/redexgen/X/GY;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Iz;->A08(Lcom/facebook/ads/redexgen/X/GY;Lcom/facebook/ads/redexgen/X/H1;)V

    .line 92203
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/kR;->A02:Z

    .line 92204
    .end local v0    # "trackOutput":Lcom/facebook/ads/redexgen/X/H1;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kR;->A01:Lcom/facebook/ads/redexgen/X/Iz;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Iz;->A04(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;)I

    move-result v0

    return v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 92205
    :cond_3
    const/4 v2, 0x0

    const/16 v1, 0x22

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kR;->A01(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0
.end method

.method public final AGr()V
    .locals 0

    .line 92206
    return-void
.end method

.method public final AIM(JJ)V
    .locals 1

    .line 92207
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kR;->A01:Lcom/facebook/ads/redexgen/X/Iz;

    if-eqz v0, :cond_0

    .line 92208
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kR;->A01:Lcom/facebook/ads/redexgen/X/Iz;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Iz;->A07(JJ)V

    .line 92209
    :cond_0
    return-void
.end method

.method public final AJL(Lcom/facebook/ads/redexgen/X/lN;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92210
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/kR;->A03(Lcom/facebook/ads/redexgen/X/lN;)Z

    move-result v0

    return v0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/2i; {:try_start_0 .. :try_end_0} :catch_0

    .line 92211
    .local v0, "e":Lcom/facebook/ads/redexgen/X/2i;
    :catch_0
    const/4 v0, 0x0

    return v0
.end method
