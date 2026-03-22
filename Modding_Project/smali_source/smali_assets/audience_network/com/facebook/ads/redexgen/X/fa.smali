.class public final Lcom/facebook/ads/redexgen/X/fa;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/NX;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/fb;
    }
.end annotation


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/RO;

.field public A01:Lcom/facebook/ads/redexgen/X/dL;

.field public final A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2755
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "2TNZv5rtJTplZyjTIrSAFwUR6QP"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "UjegX20Mk8HUIHIT"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Ti96PrkTuXG6IMzmEs5GDJe0LgUxYJn1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "WKFIsio5"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "sT4eIPa9"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0D70Whi8Ioa2N41OWBvmw3gUZoSjgMHO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "iH11Sl"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "erLbaj7N4o7d5mJ3hEM6"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/fa;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/fa;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/RO;Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)V
    .locals 0

    .line 81004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81005
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/fa;->A00:Lcom/facebook/ads/redexgen/X/RO;

    .line 81006
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/fa;->A01:Lcom/facebook/ads/redexgen/X/dL;

    .line 81007
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/fa;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    .line 81008
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/fa;)Lcom/facebook/ads/redexgen/X/RO;
    .locals 0

    .line 81009
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/fa;->A00:Lcom/facebook/ads/redexgen/X/RO;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/fa;)Lcom/facebook/ads/redexgen/X/dL;
    .locals 0

    .line 81010
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/fa;->A01:Lcom/facebook/ads/redexgen/X/dL;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/fa;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/fa;->A04:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/fa;->A04:[Ljava/lang/String;

    const-string v1, "MdmGKNh4C3mG92xgGyorPLR3SXO"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_0

    aget-byte v0, p1, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x58

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

.method public static A03()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/fa;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x1at
        -0x27t
        -0x14t
        -0x1ft
        -0x12t
        -0x23t
        -0x1ct
        -0x23t
        -0x26t
        -0x23t
        -0x22t
        -0x1at
        -0x23t
    .end array-data
.end method


# virtual methods
.method public final ADB(Lcom/facebook/ads/redexgen/X/V1;)V
    .locals 1

    .line 81011
    new-instance v0, Lcom/facebook/ads/redexgen/X/fd;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/fd;-><init>(Lcom/facebook/ads/redexgen/X/fa;Lcom/facebook/ads/redexgen/X/V1;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vk;->A00(Lcom/facebook/ads/redexgen/X/Vg;)V

    .line 81012
    return-void
.end method

.method public final AEJ(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/iN;",
            ">;)V"
        }
    .end annotation

    .line 81013
    .local v12, "nativeAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/FacebookNativeAdapter;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fa;->A01:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Lcom/facebook/ads/redexgen/X/SF;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/SF;-><init>(Lcom/facebook/ads/redexgen/X/SQ;)V

    .line 81014
    .local v0, "manager":Lcom/facebook/ads/redexgen/X/SF;
    const/4 v3, 0x6

    const/4 v2, 0x7

    const/16 v1, 0x17

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/fa;->A02(III)Ljava/lang/String;

    move-result-object v1

    .line 81015
    .local v1, "firstRequestId":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/iN;

    .line 81016
    .local v3, "nativeAdapter":Lcom/facebook/ads/redexgen/X/iN;
    const/4 v5, 0x6

    const/4 v4, 0x7

    const/16 v3, 0x17

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/fa;->A02(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81017
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/iN;->A0G()Ljava/lang/String;

    move-result-object v1

    .line 81018
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/fa;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    sget-object v3, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->ALL:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    invoke-virtual {v4, v3}, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81019
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/iN;->A0E()Lcom/facebook/ads/redexgen/X/iB;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/iB;->A0F()Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 81020
    new-instance v7, Lcom/facebook/ads/redexgen/X/SD;

    .line 81021
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/iN;->A0E()Lcom/facebook/ads/redexgen/X/iB;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/iB;->A0F()Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Up;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 81022
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/iN;->A0E()Lcom/facebook/ads/redexgen/X/iB;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/iB;->A0F()Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Up;->getHeight()I

    move-result v9

    .line 81023
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/iN;->A0E()Lcom/facebook/ads/redexgen/X/iB;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/iB;->A0F()Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Up;->getWidth()I

    move-result v10

    .line 81024
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/iN;->A0G()Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x0

    const/4 v4, 0x6

    const/16 v3, 0x20

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/fa;->A02(III)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/SD;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 81025
    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/SF;->A0c(Lcom/facebook/ads/redexgen/X/SD;)V

    .line 81026
    :cond_2
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/iN;->A0E()Lcom/facebook/ads/redexgen/X/iB;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/iB;->A0E()Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 81027
    new-instance v7, Lcom/facebook/ads/redexgen/X/SD;

    .line 81028
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/iN;->A0E()Lcom/facebook/ads/redexgen/X/iB;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/iB;->A0E()Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Up;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 81029
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/iN;->A0E()Lcom/facebook/ads/redexgen/X/iB;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/iB;->A0E()Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Up;->getHeight()I

    move-result v9

    .line 81030
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/iN;->A0E()Lcom/facebook/ads/redexgen/X/iB;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/iB;->A0E()Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Up;->getWidth()I

    move-result v10

    .line 81031
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/iN;->A0G()Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x0

    const/4 v4, 0x6

    const/16 v3, 0x20

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/fa;->A02(III)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/SD;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 81032
    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/SF;->A0c(Lcom/facebook/ads/redexgen/X/SD;)V

    .line 81033
    :cond_3
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/iN;->A0E()Lcom/facebook/ads/redexgen/X/iB;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/iB;->A0b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 81034
    new-instance v7, Lcom/facebook/ads/redexgen/X/SB;

    .line 81035
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/iN;->A0E()Lcom/facebook/ads/redexgen/X/iB;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/iB;->A0b()Ljava/lang/String;

    move-result-object v8

    .line 81036
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/iN;->A0G()Ljava/lang/String;

    move-result-object v9

    .line 81037
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/iN;->A0E()Lcom/facebook/ads/redexgen/X/iB;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/iB;->A0A()J

    move-result-wide v11

    const/4 v4, 0x0

    const/4 v3, 0x6

    const/16 v2, 0x20

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/fa;->A02(III)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/SB;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 81038
    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/SF;->A0b(Lcom/facebook/ads/redexgen/X/SB;)V

    goto/16 :goto_0

    .line 81039
    :cond_4
    new-instance v5, Lcom/facebook/ads/redexgen/X/fb;

    invoke-direct {v5, p0, p1}, Lcom/facebook/ads/redexgen/X/fb;-><init>(Lcom/facebook/ads/redexgen/X/fa;Ljava/util/List;)V

    const/4 v4, 0x0

    const/4 v3, 0x6

    const/16 v2, 0x20

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/fa;->A02(III)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/S8;

    invoke-direct {v2, v1, v3}, Lcom/facebook/ads/redexgen/X/S8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v2}, Lcom/facebook/ads/redexgen/X/SF;->A0X(Lcom/facebook/ads/redexgen/X/S7;Lcom/facebook/ads/redexgen/X/S8;)V

    .line 81040
    return-void
.end method
