.class public final Lcom/facebook/ads/redexgen/X/l8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GX;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/extractor/flv/FlvExtractor$States;
    }
.end annotation


# static fields
.field public static A0G:[Ljava/lang/String;

.field public static final A0H:Lcom/facebook/ads/redexgen/X/Gb;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:J

.field public A06:Lcom/facebook/ads/redexgen/X/GY;

.field public A07:Lcom/facebook/ads/redexgen/X/lA;

.field public A08:Lcom/facebook/ads/redexgen/X/l5;

.field public A09:Z

.field public A0A:Z

.field public final A0B:Lcom/facebook/ads/redexgen/X/4J;

.field public final A0C:Lcom/facebook/ads/redexgen/X/4J;

.field public final A0D:Lcom/facebook/ads/redexgen/X/4J;

.field public final A0E:Lcom/facebook/ads/redexgen/X/4J;

.field public final A0F:Lcom/facebook/ads/redexgen/X/l7;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3099
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "imixVRybNrgJBpwbrV4yrZtrfnRN6CnJ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "WtIdTgOpLr9NKs5TxCGGWraEed8Ae14z"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "nvE"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "WSn"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ErTHk7eYnTgSookYOy4dYMthSURbPHEq"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "4jyr3GyUtTi8KljoItgNNDucP2AqNlsy"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "x6x5cMRZdfdA3RZcYJIixT0Q9ac0Pw6j"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "1jBqwsY8y2xmCvig0OcgZP2KEis0q"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/l8;->A0G:[Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/l9;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/l9;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/l8;->A0H:Lcom/facebook/ads/redexgen/X/Gb;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 96001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96002
    const/4 v1, 0x4

    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0C:Lcom/facebook/ads/redexgen/X/4J;

    .line 96003
    const/16 v1, 0x9

    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0B:Lcom/facebook/ads/redexgen/X/4J;

    .line 96004
    const/16 v1, 0xb

    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0E:Lcom/facebook/ads/redexgen/X/4J;

    .line 96005
    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4J;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0D:Lcom/facebook/ads/redexgen/X/4J;

    .line 96006
    new-instance v0, Lcom/facebook/ads/redexgen/X/l7;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/l7;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0F:Lcom/facebook/ads/redexgen/X/l7;

    .line 96007
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A01:I

    .line 96008
    return-void
.end method

.method private A00()J
    .locals 5

    .line 96009
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A09:Z

    if-eqz v0, :cond_0

    .line 96010
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/l8;->A04:J

    sget-object v4, Lcom/facebook/ads/redexgen/X/l8;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v4, v0

    const/4 v0, 0x0

    aget-object v4, v4, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v4, Lcom/facebook/ads/redexgen/X/l8;->A0G:[Ljava/lang/String;

    const-string v1, "BRg"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const-string v1, "MUb"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A05:J

    add-long/2addr v2, v0

    .line 96011
    :goto_0
    return-wide v2

    .line 96012
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0F:Lcom/facebook/ads/redexgen/X/l7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/l7;->A0D()J

    move-result-wide v3

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/l8;->A05:J

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/lN;)Lcom/facebook/ads/redexgen/X/4J;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96013
    iget v1, p0, Lcom/facebook/ads/redexgen/X/l8;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0D:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A08()I

    move-result v0

    const/4 v3, 0x0

    if-le v1, v0, :cond_0

    .line 96014
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/l8;->A0D:Lcom/facebook/ads/redexgen/X/4J;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0D:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A08()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A02:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v2, v0, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0j([BI)V

    .line 96015
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/l8;->A0D:Lcom/facebook/ads/redexgen/X/4J;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A02:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0e(I)V

    .line 96016
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0D:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A02:I

    invoke-interface {p1, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/lN;->readFully([BII)V

    .line 96017
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0D:Lcom/facebook/ads/redexgen/X/4J;

    return-object v0

    .line 96018
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0D:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    goto :goto_0
.end method

.method private A02()V
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput"
        }
    .end annotation

    .line 96019
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0A:Z

    if-nez v0, :cond_0

    .line 96020
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/l8;->A06:Lcom/facebook/ads/redexgen/X/GY;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/lI;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/lI;-><init>(J)V

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/GY;->AIN(Lcom/facebook/ads/redexgen/X/Gw;)V

    .line 96021
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0A:Z

    .line 96022
    :cond_0
    return-void
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/lN;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96023
    iget v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A00:I

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    .line 96024
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A00:I

    .line 96025
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A01:I

    .line 96026
    return-void
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/lN;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput"
        }
    .end annotation

    .line 96027
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0B:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    const/4 v5, 0x0

    const/16 v4, 0x9

    const/4 v3, 0x1

    invoke-interface {p1, v0, v5, v4, v3}, Lcom/facebook/ads/redexgen/X/lN;->AGh([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96028
    return v5

    .line 96029
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0B:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 96030
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/l8;->A0B:Lcom/facebook/ads/redexgen/X/4J;

    const/4 v6, 0x4

    sget-object v2, Lcom/facebook/ads/redexgen/X/l8;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/l8;->A0G:[Ljava/lang/String;

    const-string v1, "nuvUOUbepbklYX7VO8aNhI2QGU1lTbhE"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "EarG3ISTV8IaVYTIGtUgI942SJk0uODJ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 96031
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0B:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v1

    .line 96032
    .local v0, "flags":I
    and-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_1

    const/4 v8, 0x1

    .line 96033
    .local v5, "hasAudio":Z
    :goto_0
    and-int/lit8 v7, v1, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/l8;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 96034
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/l8;->A0G:[Ljava/lang/String;

    const-string v1, "imt3Psvl5i5WkMBxXJw1tYAVhho8FT7n"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v7, :cond_3

    .line 96035
    const/4 v5, 0x1

    .line 96036
    .local v1, "hasVideo":Z
    :cond_3
    if-eqz v8, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A07:Lcom/facebook/ads/redexgen/X/lA;

    if-nez v0, :cond_4

    .line 96037
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/l8;->A06:Lcom/facebook/ads/redexgen/X/GY;

    .line 96038
    const/16 v0, 0x8

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/GY;->AJh(II)Lcom/facebook/ads/redexgen/X/H1;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/lA;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/lA;-><init>(Lcom/facebook/ads/redexgen/X/H1;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A07:Lcom/facebook/ads/redexgen/X/lA;

    .line 96039
    :cond_4
    const/4 v2, 0x2

    if-eqz v5, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A08:Lcom/facebook/ads/redexgen/X/l5;

    if-nez v0, :cond_5

    .line 96040
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A06:Lcom/facebook/ads/redexgen/X/GY;

    .line 96041
    invoke-interface {v0, v4, v2}, Lcom/facebook/ads/redexgen/X/GY;->AJh(II)Lcom/facebook/ads/redexgen/X/H1;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/l5;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/l5;-><init>(Lcom/facebook/ads/redexgen/X/H1;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A08:Lcom/facebook/ads/redexgen/X/l5;

    .line 96042
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A06:Lcom/facebook/ads/redexgen/X/GY;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GY;->A6G()V

    .line 96043
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0B:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    sub-int/2addr v0, v4

    add-int/2addr v0, v6

    iput v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A00:I

    .line 96044
    iput v2, p0, Lcom/facebook/ads/redexgen/X/l8;->A01:I

    .line 96045
    return v3

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/lN;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput"
        }
    .end annotation

    .line 96046
    const/4 v10, 0x1

    .line 96047
    .local v0, "wasConsumed":Z
    const/4 v9, 0x0

    .line 96048
    .local v1, "wasSampleOutput":Z
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/l8;->A00()J

    move-result-wide v1

    .line 96049
    .local v2, "timestampUs":J
    iget v3, p0, Lcom/facebook/ads/redexgen/X/l8;->A03:I

    const/16 v0, 0x8

    const/4 v6, 0x1

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ne v3, v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A07:Lcom/facebook/ads/redexgen/X/lA;

    if-eqz v0, :cond_3

    .line 96050
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/l8;->A02()V

    .line 96051
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/l8;->A07:Lcom/facebook/ads/redexgen/X/lA;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/l8;->A01(Lcom/facebook/ads/redexgen/X/lN;)Lcom/facebook/ads/redexgen/X/4J;

    move-result-object v0

    invoke-virtual {v3, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/HI;->A00(Lcom/facebook/ads/redexgen/X/4J;J)Z

    move-result v9

    .line 96052
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A09:Z

    if-nez v0, :cond_1

    if-eqz v9, :cond_1

    .line 96053
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/l8;->A09:Z

    .line 96054
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0F:Lcom/facebook/ads/redexgen/X/l7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/l7;->A0D()J

    move-result-wide v1

    cmp-long v0, v1, v7

    if-nez v0, :cond_2

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/l8;->A05:J

    sget-object v2, Lcom/facebook/ads/redexgen/X/l8;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/l8;->A0G:[Ljava/lang/String;

    const-string v1, "qsMwkk9xIwtWzz8Y8bf9D9RZC3dmDCSF"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    neg-long v0, v3

    :goto_1
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A04:J

    .line 96055
    :cond_1
    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A00:I

    .line 96056
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A01:I

    .line 96057
    return v10

    .line 96058
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 96059
    :cond_3
    iget v3, p0, Lcom/facebook/ads/redexgen/X/l8;->A03:I

    const/16 v0, 0x9

    if-ne v3, v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A08:Lcom/facebook/ads/redexgen/X/l5;

    if-eqz v0, :cond_4

    .line 96060
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/l8;->A02()V

    .line 96061
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/l8;->A08:Lcom/facebook/ads/redexgen/X/l5;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/l8;->A01(Lcom/facebook/ads/redexgen/X/lN;)Lcom/facebook/ads/redexgen/X/4J;

    move-result-object v0

    invoke-virtual {v3, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/HI;->A00(Lcom/facebook/ads/redexgen/X/4J;J)Z

    move-result v9

    goto :goto_0

    .line 96062
    :cond_4
    iget v3, p0, Lcom/facebook/ads/redexgen/X/l8;->A03:I

    const/16 v0, 0x12

    if-ne v3, v0, :cond_5

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0A:Z

    if-nez v0, :cond_5

    .line 96063
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/l8;->A0F:Lcom/facebook/ads/redexgen/X/l7;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/l8;->A01(Lcom/facebook/ads/redexgen/X/lN;)Lcom/facebook/ads/redexgen/X/4J;

    move-result-object v0

    invoke-virtual {v3, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/HI;->A00(Lcom/facebook/ads/redexgen/X/4J;J)Z

    move-result v9

    .line 96064
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0F:Lcom/facebook/ads/redexgen/X/l7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/l7;->A0D()J

    move-result-wide v2

    .line 96065
    .local v4, "durationUs":J
    cmp-long v0, v2, v7

    if-eqz v0, :cond_0

    .line 96066
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/l8;->A06:Lcom/facebook/ads/redexgen/X/GY;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0F:Lcom/facebook/ads/redexgen/X/l7;

    .line 96067
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/l7;->A0E()[J

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0F:Lcom/facebook/ads/redexgen/X/l7;

    .line 96068
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/l7;->A0F()[J

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/lJ;

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/lJ;-><init>([J[JJ)V

    .line 96069
    invoke-interface {v5, v0}, Lcom/facebook/ads/redexgen/X/GY;->AIN(Lcom/facebook/ads/redexgen/X/Gw;)V

    .line 96070
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/l8;->A0A:Z

    goto/16 :goto_0

    .line 96071
    :cond_5
    iget v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A02:I

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    .line 96072
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/lN;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96073
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0E:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v2

    const/4 v1, 0x0

    const/16 v0, 0xb

    const/4 v4, 0x1

    invoke-interface {p1, v2, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/lN;->AGh([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96074
    return v1

    .line 96075
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0E:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 96076
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0E:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A03:I

    .line 96077
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0E:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0K()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A02:I

    .line 96078
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0E:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0K()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A05:J

    .line 96079
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0E:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    int-to-long v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/l8;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v5, Lcom/facebook/ads/redexgen/X/l8;->A0G:[Ljava/lang/String;

    const-string v1, "4ZAub2Q05bEVVYNgLvK28njcI37CKeIt"

    const/4 v0, 0x5

    aput-object v1, v5, v0

    const-string v1, "aUQSwXMZXC0bGVhjCWvBp2fyGyckkl15"

    const/4 v0, 0x0

    aput-object v1, v5, v0

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A05:J

    or-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/l8;->A05:J

    .line 96080
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/l8;->A0E:Lcom/facebook/ads/redexgen/X/4J;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 96081
    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A01:I

    .line 96082
    return v4
.end method

.method public static synthetic A07()[Lcom/facebook/ads/redexgen/X/GX;
    .locals 3

    .line 96083
    const/4 v0, 0x1

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/GX;

    new-instance v1, Lcom/facebook/ads/redexgen/X/l8;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/l8;-><init>()V

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v2
.end method


# virtual methods
.method public final AA4(Lcom/facebook/ads/redexgen/X/GY;)V
    .locals 0

    .line 96084
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/l8;->A06:Lcom/facebook/ads/redexgen/X/GY;

    .line 96085
    return-void
.end method

.method public final AGb(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96086
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A06:Lcom/facebook/ads/redexgen/X/GY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96087
    :cond_0
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A01:I

    const/4 v4, -0x1

    packed-switch v0, :pswitch_data_0

    .line 96088
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 96089
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/l8;->A05(Lcom/facebook/ads/redexgen/X/lN;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/l8;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4a

    if-eq v1, v0, :cond_1

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/l8;->A0G:[Ljava/lang/String;

    const-string v1, "hEtErmVw2pGEM2VKW7DPZ3jvJ8JWR8Qp"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "qL5KjU5Lqv7wAr3B2PcEEy6NtzLZKXIh"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 96090
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/l8;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_3

    goto :goto_1

    .line 96091
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/l8;->A06(Lcom/facebook/ads/redexgen/X/lN;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/l8;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/l8;->A0G:[Ljava/lang/String;

    const-string v1, "tWexpPkMi4voS1yCEJ5KNGfvnIQwX6NI"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v3, :cond_0

    .line 96092
    return v4

    .line 96093
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/l8;->A03(Lcom/facebook/ads/redexgen/X/lN;)V

    .line 96094
    goto :goto_0

    .line 96095
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/l8;->A04(Lcom/facebook/ads/redexgen/X/lN;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96096
    return v4

    .line 96097
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/l8;->A0G:[Ljava/lang/String;

    const-string v1, "EltTpHvyDDt"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final AGr()V
    .locals 0

    .line 96098
    return-void
.end method

.method public final AIM(JJ)V
    .locals 4

    .line 96099
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    .line 96100
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A01:I

    .line 96101
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/l8;->A09:Z

    .line 96102
    :goto_0
    iput v1, p0, Lcom/facebook/ads/redexgen/X/l8;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/l8;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 96103
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A01:I

    goto :goto_0

    .line 96104
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/l8;->A0G:[Ljava/lang/String;

    const-string v1, "RsgGxkOp5mo19RRr3aJo3NcocokVUXQ7"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-void
.end method

.method public final AJL(Lcom/facebook/ads/redexgen/X/lN;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96105
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0C:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 96106
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0C:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 96107
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0C:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0K()I

    move-result v1

    const v0, 0x464c56

    if-eq v1, v0, :cond_0

    .line 96108
    return v2

    .line 96109
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0C:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    const/4 v0, 0x2

    invoke-interface {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 96110
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0C:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 96111
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0C:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v0

    and-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_1

    .line 96112
    return v2

    .line 96113
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0C:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 96114
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0C:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 96115
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0C:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    .line 96116
    .local v0, "dataOffset":I
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 96117
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/lN;->A3z(I)V

    .line 96118
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0C:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    invoke-interface {p1, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 96119
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0C:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 96120
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A0C:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method
