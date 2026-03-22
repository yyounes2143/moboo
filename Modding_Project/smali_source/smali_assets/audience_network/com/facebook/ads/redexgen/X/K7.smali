.class public final Lcom/facebook/ads/redexgen/X/K7;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/KB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StartTag"
.end annotation


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/lang/String;

.field public final A03:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 892
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Tlnn5cKjLaIjRpnStB3TtMXpCr"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "3ektkjDKhO"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "UADsPGxQMgbdHUVZTw2T7TudB6ybNpUs"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "wMkteQxfp4DsqI2DXiVAWfh1RT3"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "vTGkM2prP14EX1TDx6P9XqiD0Fmww"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "sal8paYv5RRrD9uY6TWNX8GISo"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "qTpYd1bjPJIA7eigqjtgMToqdlzi"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "UsOSpCey7qyyyJdYXs2GK2q4qSEth0kx"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/K7;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/K7;->A03()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47706
    .local p4, "classes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47707
    iput p2, p0, Lcom/facebook/ads/redexgen/X/K7;->A00:I

    .line 47708
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/K7;->A01:Ljava/lang/String;

    .line 47709
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/K7;->A02:Ljava/lang/String;

    .line 47710
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/K7;->A03:Ljava/util/Set;

    .line 47711
    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/K7;
    .locals 4

    .line 47712
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/K7;->A02(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/K7;

    invoke-direct {v0, v2, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/K7;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    .line 47713
    return-object v0
.end method

.method public static A01(Ljava/lang/String;I)Lcom/facebook/ads/redexgen/X/K7;
    .locals 5

    .line 47714
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 47715
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 47716
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/K7;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 47717
    .local v0, "voiceStartIndex":I
    const/4 v0, -0x1

    const/4 v3, 0x0

    if-ne v1, v0, :cond_0

    .line 47718
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/K7;->A02(III)Ljava/lang/String;

    move-result-object p0

    .line 47719
    .local v1, "voice":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    const/4 v1, 0x2

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/K7;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/4a;->A1O(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 47720
    .local v3, "nameAndClasses":[Ljava/lang/String;
    aget-object v3, v4, v3

    .line 47721
    .local v2, "name":Ljava/lang/String;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 47722
    .local v4, "classes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .local p0, "i":I
    :goto_1
    array-length v0, v4

    if-ge v1, v0, :cond_1

    .line 47723
    aget-object v0, v4, v1

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47724
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 47725
    .end local v1    # "voice":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 47726
    .restart local v1    # "voice":Ljava/lang/String;
    invoke-virtual {v4, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 47727
    .end local p0    # "i":I
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/K7;

    invoke-direct {v0, v3, p1, p0, v2}, Lcom/facebook/ads/redexgen/X/K7;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/K7;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/K7;->A04:[B

    sget-object v1, Lcom/facebook/ads/redexgen/X/K7;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4b

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/K7;->A05:[Ljava/lang/String;

    const-string v1, "WMYi1W8Xbtf0WzjxHgJrZE6ARrtq"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "r4jVis15Qe"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x2t
        0x49t
        0x3bt
    .end array-data
.end method
