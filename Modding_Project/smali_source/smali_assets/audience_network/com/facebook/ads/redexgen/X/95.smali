.class public final Lcom/facebook/ads/redexgen/X/95;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/kN;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/m7;,
        Lcom/facebook/ads/androidx/media3/exoplayer/text/ExoplayerCuesDecoder$InputBufferState;
    }
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/J5;

.field public final A03:Lcom/facebook/ads/redexgen/X/7j;

.field public final A04:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/facebook/ads/redexgen/X/7i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 523
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "09FvAMDbH0ybjBvy7etGUlmvLnEax64M"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "9UhXzLA65KAjnLS2nIkoWygikqgIUMi6"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7x5jjcV5dGluzAi4xLXm7mPjpISGuC5w"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "OMb242EU3cjCZF5lkBhqnraDuTpVEe8I"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "YkwDHYmprJhwUHAQbO7ClYxi5co4mZVB"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "F0wri1MO2ggHk2Yd2fKtZmsEqFQ1SY6P"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "VahsyjeijnOod8dsGLMZVGg77qfAqG3R"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "hv5jyUmHRXfPhpozztfXRSgwdurH1xzL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/95;->A05:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 25009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25010
    new-instance v0, Lcom/facebook/ads/redexgen/X/J5;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J5;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A02:Lcom/facebook/ads/redexgen/X/J5;

    .line 25011
    new-instance v0, Lcom/facebook/ads/redexgen/X/7j;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/7j;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A03:Lcom/facebook/ads/redexgen/X/7j;

    .line 25012
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A04:Ljava/util/Deque;

    .line 25013
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v0, 0x2

    if-ge v2, v0, :cond_0

    .line 25014
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/95;->A04:Ljava/util/Deque;

    new-instance v0, Lcom/facebook/ads/redexgen/X/10;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/10;-><init>(Lcom/facebook/ads/redexgen/X/95;)V

    invoke-interface {v1, v0}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 25015
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25016
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/95;->A00:I

    .line 25017
    return-void
.end method

.method private final A00()Lcom/facebook/ads/redexgen/X/7j;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/kM;
        }
    .end annotation

    .line 25018
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/95;->A01:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 25019
    iget v0, p0, Lcom/facebook/ads/redexgen/X/95;->A00:I

    if-eqz v0, :cond_0

    .line 25020
    const/4 v0, 0x0

    return-object v0

    .line 25021
    :cond_0
    iput v1, p0, Lcom/facebook/ads/redexgen/X/95;->A00:I

    .line 25022
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A03:Lcom/facebook/ads/redexgen/X/7j;

    return-object v0
.end method

.method private final A01()Lcom/facebook/ads/redexgen/X/7i;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/kM;
        }
    .end annotation

    .line 25023
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/95;->A01:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 25024
    iget v1, p0, Lcom/facebook/ads/redexgen/X/95;->A00:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A04:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25025
    .end local v0
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 25026
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A04:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/7i;

    .line 25027
    .local v0, "outputBuffer":Lcom/facebook/ads/redexgen/X/7i;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A03:Lcom/facebook/ads/redexgen/X/7j;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5I;->A05()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25028
    const/4 v3, 0x4

    sget-object v2, Lcom/facebook/ads/redexgen/X/95;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/95;->A05:[Ljava/lang/String;

    const-string v1, "JYyYZLdoMjCFjS6FBvPaG66m4kKjUjXi"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/5I;->A00(I)V

    .line 25029
    .end local v4
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A03:Lcom/facebook/ads/redexgen/X/7j;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nY;->A0A()V

    .line 25030
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/95;->A00:I

    .line 25031
    return-object v4

    .line 25032
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A03:Lcom/facebook/ads/redexgen/X/7j;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/nY;->A01:J

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/95;->A02:Lcom/facebook/ads/redexgen/X/J5;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A03:Lcom/facebook/ads/redexgen/X/7j;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/nY;->A02:Ljava/nio/ByteBuffer;

    .line 25033
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/J5;->A02([B)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    new-instance v7, Lcom/facebook/ads/redexgen/X/m7;

    invoke-direct {v7, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/m7;-><init>(JLcom/facebook/ads/redexgen/X/Am;)V

    .line 25034
    .local v4, "subtitle":Lcom/facebook/ads/redexgen/X/m7;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A03:Lcom/facebook/ads/redexgen/X/7j;

    iget-wide v5, v0, Lcom/facebook/ads/redexgen/X/nY;->A01:J

    const-wide/16 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/7i;->A0C(JLcom/facebook/ads/redexgen/X/J7;J)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/95;Lcom/facebook/ads/redexgen/X/7i;)V
    .locals 0

    .line 25035
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/95;->A04(Lcom/facebook/ads/redexgen/X/7i;)V

    return-void
.end method

.method private final A03(Lcom/facebook/ads/redexgen/X/7j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/kM;
        }
    .end annotation

    .line 25036
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/95;->A01:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 25037
    iget v0, p0, Lcom/facebook/ads/redexgen/X/95;->A00:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 25038
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A03:Lcom/facebook/ads/redexgen/X/7j;

    if-ne v0, p1, :cond_0

    :goto_1
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 25039
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/95;->A00:I

    .line 25040
    return-void

    .line 25041
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 25042
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/7i;)V
    .locals 3

    .line 25043
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A04:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ge v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 25044
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A04:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 25045
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7i;->A0A()V

    .line 25046
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A04:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 25047
    return-void

    .line 25048
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A5j()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/5P;
        }
    .end annotation

    .line 25049
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/95;->A00()Lcom/facebook/ads/redexgen/X/7j;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A5l()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/5P;
        }
    .end annotation

    .line 25050
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/95;->A01()Lcom/facebook/ads/redexgen/X/7i;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic AGZ(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/5P;
        }
    .end annotation

    .line 25051
    check-cast p1, Lcom/facebook/ads/redexgen/X/7j;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/95;->A03(Lcom/facebook/ads/redexgen/X/7j;)V

    return-void
.end method

.method public final AGr()V
    .locals 1

    .line 25052
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/95;->A01:Z

    .line 25053
    return-void
.end method

.method public final AIx(J)V
    .locals 0

    .line 25054
    return-void
.end method

.method public final flush()V
    .locals 1

    .line 25055
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/95;->A01:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 25056
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A03:Lcom/facebook/ads/redexgen/X/7j;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nY;->A0A()V

    .line 25057
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/95;->A00:I

    .line 25058
    return-void
.end method
