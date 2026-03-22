.class public abstract Lcom/facebook/ads/redexgen/X/7k;
.super Lcom/facebook/ads/redexgen/X/nW;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/kN;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/nW<",
        "Lcom/facebook/ads/redexgen/X/7j;",
        "Lcom/facebook/ads/redexgen/X/7i;",
        "Lcom/facebook/ads/redexgen/X/kM;",
        ">;",
        "Lcom/facebook/ads/redexgen/X/kN;"
    }
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 439
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "gN8"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "v0q6HziqC5r28rLi1ZsQmD2OK0fgspik"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "XftI4eRfVNg33Op0jQPz8O6PbCkMHbWE"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "SdzNGuU6dc81VqISrLBD"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "AmzsDcSyCxTNGO"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "BjhKb3Az99p878kvj1gxEmyEzdFIjRD"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "VkdZ1nUYKY17rCLbk1Npuh3A0WHSXOLE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "WDjquUi0atGhsKhHWhKEDeyGOzHRt12i"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7k;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7k;->A0M()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 22229
    const/4 v0, 0x2

    new-array v1, v0, [Lcom/facebook/ads/redexgen/X/7j;

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/7i;

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/nW;-><init>([Lcom/facebook/ads/redexgen/X/nY;[Lcom/facebook/ads/redexgen/X/nX;)V

    .line 22230
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7k;->A00:Ljava/lang/String;

    .line 22231
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/nW;->A0d(I)V

    .line 22232
    return-void
.end method

.method private final A0H()Lcom/facebook/ads/redexgen/X/0w;
    .locals 1

    .line 22233
    new-instance v0, Lcom/facebook/ads/redexgen/X/0w;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/0w;-><init>(Lcom/facebook/ads/redexgen/X/7k;)V

    return-object v0
.end method

.method private final A0I(Lcom/facebook/ads/redexgen/X/7j;Lcom/facebook/ads/redexgen/X/7i;Z)Lcom/facebook/ads/redexgen/X/kM;
    .locals 7

    .line 22234
    :try_start_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/nY;->A02:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 22235
    .local v0, "inputData":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0, p3}, Lcom/facebook/ads/redexgen/X/7k;->A0g([BIZ)Lcom/facebook/ads/redexgen/X/J7;

    move-result-object v4

    .line 22236
    .local v6, "subtitle":Lcom/facebook/ads/redexgen/X/J7;
    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/nY;->A01:J

    iget-wide v5, p1, Lcom/facebook/ads/redexgen/X/7j;->A00:J

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/7i;->A0C(JLcom/facebook/ads/redexgen/X/J7;J)V

    .line 22237
    const/high16 v0, -0x80000000

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5I;->A01(I)V

    .line 22238
    const/4 v0, 0x0

    return-object v0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/kM; {:try_start_0 .. :try_end_0} :catch_0

    .line 22239
    .end local v0    # "inputData":Ljava/nio/ByteBuffer;
    .end local v6    # "subtitle":Lcom/facebook/ads/redexgen/X/J7;
    :catch_0
    move-exception v0

    .line 22240
    .local v0, "e":Lcom/facebook/ads/redexgen/X/kM;
    return-object v0
.end method

.method private final A0J(Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/kM;
    .locals 3

    .line 22241
    const/4 v2, 0x0

    const/16 v1, 0x17

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7k;->A0L(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/kM;

    invoke-direct {v0, v1, p1}, Lcom/facebook/ads/redexgen/X/kM;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private final A0K()Lcom/facebook/ads/redexgen/X/7j;
    .locals 1

    .line 22242
    new-instance v0, Lcom/facebook/ads/redexgen/X/7j;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/7j;-><init>()V

    return-object v0
.end method

.method public static A0L(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/7k;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x64

    int-to-byte v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/7k;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/7k;->A02:[Ljava/lang/String;

    const-string v1, "7OO3CpMfw2stGNBOXFHDwltwdlKTQaUN"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "XdJDd6VP529P2X7c3MAKusUlyNrjc2WF"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    aput-byte v3, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0M()V
    .locals 4

    const/16 v3, 0x17

    sget-object v1, Lcom/facebook/ads/redexgen/X/7k;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/7k;->A02:[Ljava/lang/String;

    const-string v1, "V56IsTeJwH5mFHCmn3IS5snx7jCRlGG"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "owU73l6HwKvTqc"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7k;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x1ct
        0x35t
        0x2ct
        0x3ft
        0x37t
        0x2ct
        0x2at
        0x3bt
        0x2ct
        0x2bt
        -0x19t
        0x2bt
        0x2ct
        0x2at
        0x36t
        0x2bt
        0x2ct
        -0x19t
        0x2ct
        0x39t
        0x39t
        0x36t
        0x39t
    .end array-data
.end method


# virtual methods
.method public final bridge synthetic A0Y(Lcom/facebook/ads/redexgen/X/nY;Lcom/facebook/ads/redexgen/X/nX;Z)Lcom/facebook/ads/redexgen/X/5P;
    .locals 1

    .line 22243
    check-cast p1, Lcom/facebook/ads/redexgen/X/7j;

    check-cast p2, Lcom/facebook/ads/redexgen/X/7i;

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/7k;->A0I(Lcom/facebook/ads/redexgen/X/7j;Lcom/facebook/ads/redexgen/X/7i;Z)Lcom/facebook/ads/redexgen/X/kM;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0Z(Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/5P;
    .locals 1

    .line 22244
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7k;->A0J(Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/kM;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0a()Lcom/facebook/ads/redexgen/X/nY;
    .locals 1

    .line 22245
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7k;->A0K()Lcom/facebook/ads/redexgen/X/7j;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0c()Lcom/facebook/ads/redexgen/X/nX;
    .locals 1

    .line 22246
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7k;->A0H()Lcom/facebook/ads/redexgen/X/0w;

    move-result-object v0

    return-object v0
.end method

.method public abstract A0g([BIZ)Lcom/facebook/ads/redexgen/X/J7;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/kM;
        }
    .end annotation
.end method

.method public final A0h(Lcom/facebook/ads/redexgen/X/7i;)V
    .locals 0

    .line 22247
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/nW;->A0f(Lcom/facebook/ads/redexgen/X/nX;)V

    .line 22248
    return-void
.end method

.method public final AIx(J)V
    .locals 0

    .line 22249
    return-void
.end method
