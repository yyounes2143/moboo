.class public final Lcom/facebook/ads/redexgen/X/dn;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/dm;->A07()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/dm;

.field public final synthetic A01:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/dn;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dm;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 79674
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/dn;->A00:Lcom/facebook/ads/redexgen/X/dm;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/dn;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/dn;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/dn;->A02:[B

    return-void

    :array_0
    .array-data 1
        0xet
        0x2ct
        0x2et
        0x33t
        0x30t
        -0x15t
        0x31t
        0x2ct
        0x34t
        0x37t
        -0x7t
        -0x6et
        -0x50t
        -0x4et
        -0x49t
        -0x4ct
        0x6ft
        -0x3et
        -0x3ct
        -0x4et
        -0x4et
        -0x4ct
        -0x3et
        -0x3et
        0x7dt
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 9

    .line 79675
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dn;->A00:Lcom/facebook/ads/redexgen/X/dm;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/dm;->A00:Lcom/facebook/ads/redexgen/X/S7;

    if-eqz v0, :cond_0

    .line 79676
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dn;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79677
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dn;->A00:Lcom/facebook/ads/redexgen/X/dm;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/dm;->A02:Lcom/facebook/ads/redexgen/X/SF;

    sget-object v0, Lcom/facebook/ads/redexgen/X/UZ;->A0H:Lcom/facebook/ads/redexgen/X/UZ;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/SF;->A0G(Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/UZ;)V

    .line 79678
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dn;->A00:Lcom/facebook/ads/redexgen/X/dm;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/dm;->A02:Lcom/facebook/ads/redexgen/X/SF;

    .line 79679
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SF;->A07(Lcom/facebook/ads/redexgen/X/SF;)Lcom/facebook/ads/redexgen/X/SQ;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dn;->A00:Lcom/facebook/ads/redexgen/X/dm;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/dm;->A01:Lcom/facebook/ads/redexgen/X/S8;

    sget v5, Lcom/facebook/ads/redexgen/X/SI;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dn;->A00:Lcom/facebook/ads/redexgen/X/dm;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/dm;->A02:Lcom/facebook/ads/redexgen/X/SF;

    .line 79680
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SF;->A00(Lcom/facebook/ads/redexgen/X/SF;)J

    move-result-wide v7

    .line 79681
    const/16 v2, 0xb

    const/16 v1, 0xe

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dn;->A00(III)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/SI;->A02(Lcom/facebook/ads/redexgen/X/SQ;Lcom/facebook/ads/redexgen/X/S8;ILjava/lang/String;J)V

    .line 79682
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dn;->A00:Lcom/facebook/ads/redexgen/X/dm;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/dm;->A02:Lcom/facebook/ads/redexgen/X/SF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SF;->A0U()V

    .line 79683
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dn;->A00:Lcom/facebook/ads/redexgen/X/dm;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/dm;->A00:Lcom/facebook/ads/redexgen/X/S7;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/S7;->ACq()V

    .line 79684
    :cond_0
    :goto_0
    return-void

    .line 79685
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dn;->A00:Lcom/facebook/ads/redexgen/X/dm;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/dm;->A02:Lcom/facebook/ads/redexgen/X/SF;

    sget-object v0, Lcom/facebook/ads/redexgen/X/UZ;->A0G:Lcom/facebook/ads/redexgen/X/UZ;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/SF;->A0G(Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/UZ;)V

    .line 79686
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dn;->A00:Lcom/facebook/ads/redexgen/X/dm;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/dm;->A02:Lcom/facebook/ads/redexgen/X/SF;

    .line 79687
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SF;->A07(Lcom/facebook/ads/redexgen/X/SF;)Lcom/facebook/ads/redexgen/X/SQ;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dn;->A00:Lcom/facebook/ads/redexgen/X/dm;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/dm;->A01:Lcom/facebook/ads/redexgen/X/S8;

    sget v5, Lcom/facebook/ads/redexgen/X/SI;->A04:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dn;->A00:Lcom/facebook/ads/redexgen/X/dm;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/dm;->A02:Lcom/facebook/ads/redexgen/X/SF;

    .line 79688
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SF;->A00(Lcom/facebook/ads/redexgen/X/SF;)J

    move-result-wide v7

    .line 79689
    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dn;->A00(III)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/SI;->A02(Lcom/facebook/ads/redexgen/X/SQ;Lcom/facebook/ads/redexgen/X/S8;ILjava/lang/String;J)V

    .line 79690
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dn;->A00:Lcom/facebook/ads/redexgen/X/dm;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/dm;->A02:Lcom/facebook/ads/redexgen/X/SF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SF;->A0V()V

    .line 79691
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dn;->A00:Lcom/facebook/ads/redexgen/X/dm;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/dm;->A00:Lcom/facebook/ads/redexgen/X/S7;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/S7;->ACh()V

    goto :goto_0
.end method
