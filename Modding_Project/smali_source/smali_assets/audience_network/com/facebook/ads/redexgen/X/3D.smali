.class public final Lcom/facebook/ads/redexgen/X/3D;
.super Lcom/facebook/ads/redexgen/X/Da;
.source ""


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/AudioManager$OnAudioFocusChangeListener;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/DX;

.field public final A02:Lcom/facebook/ads/redexgen/X/DR;

.field public final A03:Lcom/facebook/ads/redexgen/X/DP;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 94
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "QMyl0EdrMkBz74Ff"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "RsTLWDF6GNKozTWYWcUQtNpRSKZ3a8yy"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "3BM6qDUn0450lnygNbifIZpDeGnVa2ha"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "F"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "qC4SUzvBtsB95zH"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "T9xPYhzLnjJILIo2UZ88O5HWOSlCgw65"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "9Z5hXOcvGEJoZZ2dBR43Uw9AYXT3hwwE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "j5Icya"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/3D;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/3D;->A05()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 1

    .line 10777
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Da;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 10778
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:Ljava/lang/ref/WeakReference;

    .line 10779
    new-instance v0, Lcom/facebook/ads/redexgen/X/3G;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3G;-><init>(Lcom/facebook/ads/redexgen/X/3D;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/DX;

    .line 10780
    new-instance v0, Lcom/facebook/ads/redexgen/X/3F;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3F;-><init>(Lcom/facebook/ads/redexgen/X/3D;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A02:Lcom/facebook/ads/redexgen/X/DR;

    .line 10781
    new-instance v0, Lcom/facebook/ads/redexgen/X/3E;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3E;-><init>(Lcom/facebook/ads/redexgen/X/3D;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A03:Lcom/facebook/ads/redexgen/X/DP;

    .line 10782
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/3D;)Lcom/facebook/ads/redexgen/X/E1;
    .locals 0

    .line 10783
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Da;->getVideoView()Lcom/facebook/ads/redexgen/X/E1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/3D;)Lcom/facebook/ads/redexgen/X/E1;
    .locals 0

    .line 10784
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Da;->getVideoView()Lcom/facebook/ads/redexgen/X/E1;

    move-result-object p0

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x2a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/3D;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 10785
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/3D;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 10786
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method public static A05()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/3D;->A04:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x6ct
        -0x58t
        -0x69t
        -0x64t
        -0x5et
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 10787
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Da;->A07()V

    .line 10788
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Da;->getVideoView()Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10789
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Da;->getVideoView()Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    .line 10790
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getEventBus()Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v3

    const/4 v0, 0x3

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/Tf;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A03:Lcom/facebook/ads/redexgen/X/DP;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/DX;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A02:Lcom/facebook/ads/redexgen/X/DR;

    aput-object v0, v2, v1

    .line 10791
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Te;->A03([Lcom/facebook/ads/redexgen/X/Tf;)V

    .line 10792
    :cond_0
    return-void
.end method

.method public final A08()V
    .locals 6

    .line 10793
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Da;->getVideoView()Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10794
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Da;->getVideoView()Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    .line 10795
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getEventBus()Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v4

    const/4 v0, 0x3

    new-array v3, v0, [Lcom/facebook/ads/redexgen/X/Tf;

    const/4 v5, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A05:[Ljava/lang/String;

    const-string v1, "N8PlN6ko7rCmWrjSgXmwzpcc7zXrNMwO"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "3Ei0HdJvkUvOcHctndwpn9MtMWHZ1TMz"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A02:Lcom/facebook/ads/redexgen/X/DR;

    aput-object v0, v3, v5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/DX;

    aput-object v0, v3, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A03:Lcom/facebook/ads/redexgen/X/DP;

    aput-object v0, v3, v1

    .line 10796
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/Te;->A04([Lcom/facebook/ads/redexgen/X/Tf;)V

    .line 10797
    :cond_0
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Da;->A08()V

    .line 10798
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onDetachedFromWindow()V
    .locals 4

    .line 10799
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 10800
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 10801
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Da;->onDetachedFromWindow()V

    .line 10802
    return-void

    .line 10803
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    goto :goto_0
.end method
