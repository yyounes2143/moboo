.class public final Lcom/facebook/ads/redexgen/X/13;
.super Lcom/facebook/ads/redexgen/X/9Z;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/exoplayer/metadata/MetadataRenderer$Output;
    }
.end annotation


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:Lcom/facebook/ads/redexgen/X/HK;

.field public A04:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/he;",
            ">;"
        }
    .end annotation
.end field

.field public A05:Z

.field public final A06:Landroid/os/Handler;

.field public final A07:Lcom/facebook/ads/redexgen/X/B1;

.field public final A08:Lcom/facebook/ads/redexgen/X/B3;

.field public final A09:Lcom/facebook/ads/redexgen/X/8z;

.field public final A0A:[J

.field public final A0B:[Lcom/facebook/ads/androidx/media3/common/Metadata;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 44
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "NK"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vMUMQm9t3PVEHAhulw0MAIkQwbUiUT4C"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "VzHAp2e3DLoJMdzQNED0QcuPK7cYUDq5"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "FnbOiwq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "xIduLB4T8250"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Cs28mBuu0mG0MZGGLuKaoZOHc13snW3U"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yvPpy336WGNf4g7OJVDaRPYRY7Bcuv5q"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "KVpXSq2ZIE7gcar9k8WJ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/13;->A0D:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/13;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/B3;Landroid/os/Looper;)V
    .locals 2

    .line 6935
    sget-object v1, Lcom/facebook/ads/redexgen/X/B1;->A00:Lcom/facebook/ads/redexgen/X/B1;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/13;-><init>(Lcom/facebook/ads/redexgen/X/B3;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/B1;Ljava/lang/String;)V

    .line 6936
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/B3;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/B1;Ljava/lang/String;)V
    .locals 2

    .line 6937
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/9Z;-><init>(I)V

    .line 6938
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/B3;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A08:Lcom/facebook/ads/redexgen/X/B3;

    .line 6939
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A06:Landroid/os/Handler;

    .line 6940
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/B1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A07:Lcom/facebook/ads/redexgen/X/B1;

    .line 6941
    new-instance v0, Lcom/facebook/ads/redexgen/X/8z;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/8z;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A09:Lcom/facebook/ads/redexgen/X/8z;

    .line 6942
    new-array v0, v1, [Lcom/facebook/ads/androidx/media3/common/Metadata;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A0B:[Lcom/facebook/ads/androidx/media3/common/Metadata;

    .line 6943
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A0A:[J

    .line 6944
    invoke-direct {p0, p4}, Lcom/facebook/ads/redexgen/X/13;->A08(Ljava/lang/String;)V

    .line 6945
    return-void

    .line 6946
    :cond_0
    invoke-static {p2, p0}, Lcom/facebook/ads/redexgen/X/4a;->A0c(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    goto :goto_0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/13;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 2

    .line 6947
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/13;->A0B:[Lcom/facebook/ads/androidx/media3/common/Metadata;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6948
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/13;->A01:I

    .line 6949
    iput v0, p0, Lcom/facebook/ads/redexgen/X/13;->A00:I

    .line 6950
    return-void
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x29

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/13;->A0C:[B

    return-void

    :array_0
    .array-data 1
        0x56t
        0x61t
        0x61t
        0x7ct
        0x61t
        0x33t
        0x7at
        0x7dt
        0x33t
        0x63t
        0x72t
        0x61t
        0x60t
        0x7at
        0x7dt
        0x74t
        0x33t
        0x5at
        0x5et
        0x55t
        0x33t
        0x60t
        0x63t
        0x76t
        0x70t
        0x7ct
        0x54t
        0x45t
        0x50t
        0x55t
        0x50t
        0x45t
        0x50t
        0x63t
        0x54t
        0x5ft
        0x55t
        0x54t
        0x43t
        0x54t
        0x43t
    .end array-data
.end method

.method private A03(J)V
    .locals 5

    .line 6951
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A04:Ljava/util/List;

    if-nez v0, :cond_0

    .line 6952
    return-void

    .line 6953
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A04:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/he;

    .line 6954
    .local v1, "imfDataTrack":Lcom/facebook/ads/redexgen/X/he;
    iget-wide v1, v3, Lcom/facebook/ads/redexgen/X/he;->A01:J

    cmp-long v0, v1, p1

    if-gtz v0, :cond_1

    iget-wide v1, v3, Lcom/facebook/ads/redexgen/X/he;->A00:J

    cmp-long v0, v1, p1

    if-ltz v0, :cond_1

    goto :goto_0

    .line 6955
    :cond_2
    return-void
.end method

.method private A04(J)V
    .locals 5

    .line 6956
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A04:Ljava/util/List;

    if-nez v0, :cond_0

    .line 6957
    return-void

    .line 6958
    :cond_0
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/1w;->A01(J)J

    move-result-wide v3

    .line 6959
    .local v0, "positionMs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A06:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 6960
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/13;->A06:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6961
    :goto_0
    return-void

    .line 6962
    :cond_1
    invoke-direct {p0, v3, v4}, Lcom/facebook/ads/redexgen/X/13;->A03(J)V

    goto :goto_0
.end method

.method private A05(Lcom/facebook/ads/androidx/media3/common/Metadata;J)V
    .locals 5

    .line 6963
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A06:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 6964
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/13;->A06:Landroid/os/Handler;

    sget-object v2, Lcom/facebook/ads/redexgen/X/13;->A0D:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 6965
    sget-object v2, Lcom/facebook/ads/redexgen/X/13;->A0D:[Ljava/lang/String;

    const-string v1, "4kdXpcjsywiaLxx0LOctAJHWIf081Tdg"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v2, v1

    const/4 v0, 0x1

    aput-object v3, v2, v0

    invoke-virtual {v4, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6966
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6967
    :goto_0
    return-void

    .line 6968
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/13;->A06(Lcom/facebook/ads/androidx/media3/common/Metadata;J)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A06(Lcom/facebook/ads/androidx/media3/common/Metadata;J)V
    .locals 1

    .line 6969
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A08:Lcom/facebook/ads/redexgen/X/B3;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/B3;->AEE(Lcom/facebook/ads/androidx/media3/common/Metadata;J)V

    .line 6970
    return-void
.end method

.method private A07(Lcom/facebook/ads/androidx/media3/common/Metadata;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/androidx/media3/common/Metadata;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;",
            ">;)V"
        }
    .end annotation

    .line 6971
    .local p3, "decodedEntries":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;>;"
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/androidx/media3/common/Metadata;->A02()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 6972
    invoke-virtual {p1, v3}, Lcom/facebook/ads/androidx/media3/common/Metadata;->A03(I)Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;->A9T()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v1

    .line 6973
    .local v1, "wrappedMetadataFormat":Lcom/facebook/ads/redexgen/X/or;
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A07:Lcom/facebook/ads/redexgen/X/B1;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/B1;->AJc(Lcom/facebook/ads/redexgen/X/or;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6974
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A07:Lcom/facebook/ads/redexgen/X/B1;

    .line 6975
    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/B1;->A5B(Lcom/facebook/ads/redexgen/X/or;)Lcom/facebook/ads/redexgen/X/HK;

    move-result-object v4

    .line 6976
    .local v2, "wrappedMetadataDecoder":Lcom/facebook/ads/redexgen/X/HK;
    invoke-virtual {p1, v3}, Lcom/facebook/ads/androidx/media3/common/Metadata;->A03(I)Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;->A9S()[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 6977
    .local v3, "wrappedMetadataBytes":[B
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A09:Lcom/facebook/ads/redexgen/X/8z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nY;->A0A()V

    .line 6978
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/13;->A09:Lcom/facebook/ads/redexgen/X/8z;

    array-length v0, v2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/nY;->A0C(I)V

    .line 6979
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A09:Lcom/facebook/ads/redexgen/X/8z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/nY;->A02:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 6980
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A09:Lcom/facebook/ads/redexgen/X/8z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nY;->A0B()V

    .line 6981
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A09:Lcom/facebook/ads/redexgen/X/8z;

    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/HK;->A5g(Lcom/facebook/ads/redexgen/X/8z;)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object v0

    .line 6982
    .local v4, "innerMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    if-eqz v0, :cond_0

    .line 6983
    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/13;->A07(Lcom/facebook/ads/androidx/media3/common/Metadata;Ljava/util/List;)V

    .line 6984
    .end local v1    # "wrappedMetadataFormat":Lcom/facebook/ads/redexgen/X/or;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6985
    :cond_1
    invoke-virtual {p1, v3}, Lcom/facebook/ads/androidx/media3/common/Metadata;->A03(I)Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6986
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private A08(Ljava/lang/String;)V
    .locals 4

    .line 6987
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6988
    :try_start_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/hf;->A01(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A04:Ljava/util/List;

    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6989
    .local v0, "e":Lorg/json/JSONException;
    :catch_0
    const/16 v2, 0x19

    const/16 v1, 0x10

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/13;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x19

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/13;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A05(Ljava/lang/String;Ljava/lang/String;)V

    .line 6990
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final A1Z()V
    .locals 1

    .line 6991
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/13;->A01()V

    .line 6992
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A03:Lcom/facebook/ads/redexgen/X/HK;

    .line 6993
    return-void
.end method

.method public final A1a(JZ)V
    .locals 1

    .line 6994
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/13;->A01()V

    .line 6995
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/13;->A05:Z

    .line 6996
    return-void
.end method

.method public final A1c([Lcom/facebook/ads/redexgen/X/or;JJ)V
    .locals 2

    .line 6997
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/13;->A07:Lcom/facebook/ads/redexgen/X/B1;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/B1;->A5B(Lcom/facebook/ads/redexgen/X/or;)Lcom/facebook/ads/redexgen/X/HK;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A03:Lcom/facebook/ads/redexgen/X/HK;

    .line 6998
    return-void
.end method

.method public final AAG()Z
    .locals 1

    .line 6999
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/13;->A05:Z

    return v0
.end method

.method public final AAV()Z
    .locals 1

    .line 7000
    const/4 v0, 0x1

    return v0
.end method

.method public final AHn(JJ)V
    .locals 6

    .line 7001
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/13;->A04(J)V

    .line 7002
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/13;->A05:Z

    const/4 v4, 0x5

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iget v5, p0, Lcom/facebook/ads/redexgen/X/13;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/13;->A0D:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/13;->A0D:[Ljava/lang/String;

    const-string v1, "1aiib0Ku6fHDvKwfwiyuvRv8M83XUpBK"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ge v5, v4, :cond_0

    .line 7003
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A09:Lcom/facebook/ads/redexgen/X/8z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nY;->A0A()V

    .line 7004
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9Z;->A1U()Lcom/facebook/ads/redexgen/X/6N;

    move-result-object v2

    .line 7005
    .local v0, "formatHolder":Lcom/facebook/ads/redexgen/X/6N;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/13;->A09:Lcom/facebook/ads/redexgen/X/8z;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9Z;->A1R(Lcom/facebook/ads/redexgen/X/6N;Lcom/facebook/ads/redexgen/X/nY;I)I

    move-result v1

    .line 7006
    .local v3, "result":I
    const/4 v0, -0x4

    if-ne v1, v0, :cond_4

    .line 7007
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A09:Lcom/facebook/ads/redexgen/X/8z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5I;->A05()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7008
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/13;->A05:Z

    .line 7009
    .end local v0    # "formatHolder":Lcom/facebook/ads/redexgen/X/6N;
    .end local v3    # "result":I
    :cond_0
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/13;->A00:I

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/13;->A0A:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/13;->A01:I

    aget-wide v1, v1, v0

    cmp-long v0, v1, p1

    if-gtz v0, :cond_1

    .line 7010
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/13;->A0B:[Lcom/facebook/ads/androidx/media3/common/Metadata;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/13;->A01:I

    aget-object v0, v1, v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/androidx/media3/common/Metadata;

    .line 7011
    .local v0, "metadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/13;->A0A:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/13;->A01:I

    aget-wide v0, v1, v0

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/1w;->A01(J)J

    move-result-wide v0

    .line 7012
    .local v3, "offsetMs":J
    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/13;->A05(Lcom/facebook/ads/androidx/media3/common/Metadata;J)V

    .line 7013
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/13;->A0B:[Lcom/facebook/ads/androidx/media3/common/Metadata;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/13;->A01:I

    const/4 v0, 0x0

    aput-object v0, v2, v1

    .line 7014
    iget v0, p0, Lcom/facebook/ads/redexgen/X/13;->A01:I

    add-int/2addr v0, v3

    rem-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/13;->A01:I

    .line 7015
    iget v0, p0, Lcom/facebook/ads/redexgen/X/13;->A00:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/13;->A00:I

    .line 7016
    .end local v0    # "metadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    .end local v3    # "offsetMs":J
    :cond_1
    return-void

    .line 7017
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A09:Lcom/facebook/ads/redexgen/X/8z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5I;->A04()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 7018
    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/13;->A09:Lcom/facebook/ads/redexgen/X/8z;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/13;->A02:J

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/8z;->A00:J

    .line 7019
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A09:Lcom/facebook/ads/redexgen/X/8z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nY;->A0B()V

    .line 7020
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A03:Lcom/facebook/ads/redexgen/X/HK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/HK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A09:Lcom/facebook/ads/redexgen/X/8z;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/HK;->A5g(Lcom/facebook/ads/redexgen/X/8z;)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object v1

    .line 7021
    .local v4, "metadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    if-eqz v1, :cond_0

    .line 7022
    invoke-virtual {v1}, Lcom/facebook/ads/androidx/media3/common/Metadata;->A02()I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 7023
    .local v5, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;>;"
    invoke-direct {p0, v1, v2}, Lcom/facebook/ads/redexgen/X/13;->A07(Lcom/facebook/ads/androidx/media3/common/Metadata;Ljava/util/List;)V

    .line 7024
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7025
    new-instance v1, Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-direct {v1, v2}, Lcom/facebook/ads/androidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    .line 7026
    .local p0, "expandedMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    iget v5, p0, Lcom/facebook/ads/redexgen/X/13;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/13;->A00:I

    add-int/2addr v5, v0

    rem-int/2addr v5, v4

    .line 7027
    .local p1, "index":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A0B:[Lcom/facebook/ads/androidx/media3/common/Metadata;

    aput-object v1, v0, v5

    .line 7028
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/13;->A0A:[J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A09:Lcom/facebook/ads/redexgen/X/8z;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/nY;->A01:J

    aput-wide v0, v2, v5

    .line 7029
    iget v0, p0, Lcom/facebook/ads/redexgen/X/13;->A00:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/13;->A00:I

    goto/16 :goto_0

    .line 7030
    :cond_4
    const/4 v0, -0x5

    if-ne v1, v0, :cond_0

    .line 7031
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/6N;->A00:Lcom/facebook/ads/redexgen/X/or;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/or;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/or;->A0M:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/13;->A02:J

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AJb(Lcom/facebook/ads/redexgen/X/or;)I
    .locals 1

    .line 7032
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A07:Lcom/facebook/ads/redexgen/X/B1;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/B1;->AJc(Lcom/facebook/ads/redexgen/X/or;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7033
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/14;->A1G(Lcom/facebook/ads/redexgen/X/or;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7034
    const/4 v0, 0x4

    .line 7035
    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/76;->A00(I)I

    move-result v0

    return v0

    .line 7036
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 7037
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/76;->A00(I)I

    move-result v0

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 3

    .line 7038
    const/16 v2, 0x19

    const/16 v1, 0x10

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/13;->A00(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 7039
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 7040
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 7041
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/13;->A03(J)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/13;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7042
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/13;->A0D:[Ljava/lang/String;

    const-string v1, "UckPrHUV0DeFsLdW0mSA3sL7bYTaY94z"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v3

    .line 7043
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 7044
    .local v0, "extraData":[Ljava/lang/Object;
    const/4 v0, 0x0

    aget-object v2, v1, v0

    check-cast v2, Lcom/facebook/ads/androidx/media3/common/Metadata;

    aget-object v0, v1, v3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/13;->A06(Lcom/facebook/ads/androidx/media3/common/Metadata;J)V

    .line 7045
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
