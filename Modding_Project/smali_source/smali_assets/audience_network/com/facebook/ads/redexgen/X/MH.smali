.class public abstract Lcom/facebook/ads/redexgen/X/MH;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/MF;,
        Lcom/facebook/ads/redexgen/X/MG;
    }
.end annotation


# static fields
.field public static A04:[B


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/MF;

.field public final A01:Lcom/facebook/ads/redexgen/X/dL;

.field public final A02:Lcom/facebook/ads/redexgen/X/US;

.field public final A03:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/MH;->A0D()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Ljava/lang/String;)V
    .locals 0

    .line 51895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51896
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MH;->A01:Lcom/facebook/ads/redexgen/X/dL;

    .line 51897
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/MH;->A02:Lcom/facebook/ads/redexgen/X/US;

    .line 51898
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/MH;->A03:Ljava/lang/String;

    .line 51899
    return-void
.end method

.method public static A0A()Ljava/lang/String;
    .locals 3

    .line 51900
    const/16 v2, 0x10

    const/16 v1, 0x10

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MH;->A0B(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A0B(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/MH;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/MH;)Ljava/lang/String;
    .locals 2

    .line 51901
    instance-of v0, p0, Lcom/facebook/ads/redexgen/X/7O;

    if-eqz v0, :cond_0

    .line 51902
    const/4 p0, 0x6

    const/16 v1, 0xa

    const/16 v0, 0x7a

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/MH;->A0B(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51903
    :cond_0
    const/4 p0, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x4f

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/MH;->A0B(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A0D()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/MH;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x54t
        0x45t
        0x45t
        0x6at
        0x54t
        0x51t
        0x6ct
        0x69t
        0x6et
        0x6bt
        0x5ft
        0x63t
        0x6ct
        0x69t
        0x63t
        0x6bt
        0x70t
        0x66t
        0x73t
        0x64t
        0x6ft
        0x58t
        0x66t
        0x69t
        0x63t
        0x58t
        0x65t
        0x75t
        0x68t
        0x70t
        0x74t
        0x62t
    .end array-data
.end method


# virtual methods
.method public final A0E()Lcom/facebook/ads/redexgen/X/MF;
    .locals 1

    .line 51904
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A00:Lcom/facebook/ads/redexgen/X/MF;

    return-object v0
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/MF;)V
    .locals 0

    .line 51905
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MH;->A00:Lcom/facebook/ads/redexgen/X/MF;

    .line 51906
    return-void
.end method

.method public abstract A0G(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ME;
.end method
