.class public final Lcom/facebook/ads/redexgen/X/0z;
.super Lcom/facebook/ads/redexgen/X/9Z;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/exoplayer/text/TextRenderer$ReplacementState;
    }
.end annotation


# static fields
.field public static A0H:[B

.field public static A0I:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:Lcom/facebook/ads/redexgen/X/or;

.field public A06:Lcom/facebook/ads/redexgen/X/kN;

.field public A07:Lcom/facebook/ads/redexgen/X/7j;

.field public A08:Lcom/facebook/ads/redexgen/X/7i;

.field public A09:Lcom/facebook/ads/redexgen/X/7i;

.field public A0A:Z

.field public A0B:Z

.field public A0C:Z

.field public final A0D:Landroid/os/Handler;

.field public final A0E:Lcom/facebook/ads/redexgen/X/6N;

.field public final A0F:Lcom/facebook/ads/redexgen/X/Dn;

.field public final A0G:Lcom/facebook/ads/redexgen/X/Dq;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 43
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "58lW15hp88fFpLaSxErp"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "56QScXrV6I"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "DwEmmtKo2ODeTiA17rxauXwet98Z4"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "A4aLtxZMLOPLaVE6SeDzXnpOLTGefetw"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "FhOKuZuvLBWd8lghoK1mwxVLtzQRZ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "h1d8vpIJ83Cnf8DVjx4Ui7av1xQxYsFL"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "y1YT0hSXczs7bGZDGpuR"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "alxZNjekiwxoo3ZSsAAxphzspQJfVEZr"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/0z;->A0I:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/0z;->A09()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Dq;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/Dn;)V
    .locals 2

    .line 6745
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9Z;-><init>(I)V

    .line 6746
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Dq;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A0G:Lcom/facebook/ads/redexgen/X/Dq;

    .line 6747
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A0D:Landroid/os/Handler;

    .line 6748
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/0z;->A0F:Lcom/facebook/ads/redexgen/X/Dn;

    .line 6749
    new-instance v0, Lcom/facebook/ads/redexgen/X/6N;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/6N;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A0E:Lcom/facebook/ads/redexgen/X/6N;

    .line 6750
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A02:J

    .line 6751
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A04:J

    .line 6752
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A03:J

    .line 6753
    return-void

    .line 6754
    :cond_0
    invoke-static {p2, p0}, Lcom/facebook/ads/redexgen/X/4a;->A0c(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    goto :goto_0
.end method

.method private A00()J
    .locals 4

    .line 6755
    iget v1, p0, Lcom/facebook/ads/redexgen/X/0z;->A01:I

    const/4 v0, -0x1

    const-wide v2, 0x7fffffffffffffffL

    if-ne v1, v0, :cond_0

    .line 6756
    return-wide v2

    .line 6757
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A09:Lcom/facebook/ads/redexgen/X/7i;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6758
    iget v1, p0, Lcom/facebook/ads/redexgen/X/0z;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A09:Lcom/facebook/ads/redexgen/X/7i;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7i;->A7w()I

    move-result v0

    if-lt v1, v0, :cond_1

    :goto_0
    return-wide v2

    .line 6759
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0z;->A09:Lcom/facebook/ads/redexgen/X/7i;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A01:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7i;->A7v(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method private A01(J)J
    .locals 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "subtitle"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 6760
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A09:Lcom/facebook/ads/redexgen/X/7i;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/7i;->A8S(J)I

    move-result v4

    .line 6761
    .local v0, "nextEventTimeIndex":I
    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A09:Lcom/facebook/ads/redexgen/X/7i;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7i;->A7w()I

    move-result v0

    if-nez v0, :cond_1

    .line 6762
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A09:Lcom/facebook/ads/redexgen/X/7i;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/nX;->A01:J

    return-wide v0

    .line 6763
    :cond_1
    const/4 v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/0z;->A0I:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/0z;->A0I:[Ljava/lang/String;

    const-string v1, "dWbBH4lKinuUlTA8CpNFonpmnzuPl"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "MDue3s6tkJ65MZJ0TxYFZvpfeIb1w"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_4

    .line 6764
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/0z;->A09:Lcom/facebook/ads/redexgen/X/7i;

    sget-object v1, Lcom/facebook/ads/redexgen/X/0z;->A0I:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A09:Lcom/facebook/ads/redexgen/X/7i;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7i;->A7w()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/7i;->A7v(I)J

    move-result-wide v0

    .line 6765
    :goto_0
    return-wide v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/0z;->A0I:[Ljava/lang/String;

    const-string v1, "us0wUp64B7rq5nQeuQUWAOSOIfPFOl8I"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A09:Lcom/facebook/ads/redexgen/X/7i;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7i;->A7w()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/7i;->A7v(I)J

    move-result-wide v0

    goto :goto_0

    .line 6766
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0z;->A09:Lcom/facebook/ads/redexgen/X/7i;

    add-int/lit8 v0, v4, -0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7i;->A7v(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private A02(J)J
    .locals 6
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 6767
    const/4 v5, 0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v3

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 6768
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/0z;->A04:J

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    :goto_1
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 6769
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A04:J

    sub-long/2addr p1, v0

    return-wide p1

    .line 6770
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 6771
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/0z;->A0H:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/0z;->A0I:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/0z;->A0I:[Ljava/lang/String;

    const-string v1, "1YRuRVntTKbD5w1SSS8awuyRss3tM"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "HmFGzdsys3t1iPkkAdwtO8Q44Z9aJ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7a

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()V
    .locals 4

    .line 6772
    nop

    .line 6773
    invoke-static {}, Lcom/facebook/ads/redexgen/X/i1;->A01()Ljava/util/List;

    move-result-object v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A03:J

    .line 6774
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/0z;->A02(J)J

    move-result-wide v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/o0;

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/o0;-><init>(Ljava/util/List;J)V

    .line 6775
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/0z;->A0B(Lcom/facebook/ads/redexgen/X/o0;)V

    .line 6776
    return-void
.end method

.method private A05()V
    .locals 2

    .line 6777
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A0C:Z

    .line 6778
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0z;->A0F:Lcom/facebook/ads/redexgen/X/Dn;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A05:Lcom/facebook/ads/redexgen/X/or;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/or;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Dn;->A5C(Lcom/facebook/ads/redexgen/X/or;)Lcom/facebook/ads/redexgen/X/kN;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A06:Lcom/facebook/ads/redexgen/X/kN;

    .line 6779
    return-void
.end method

.method private A06()V
    .locals 2

    .line 6780
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/0z;->A07:Lcom/facebook/ads/redexgen/X/7j;

    .line 6781
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A01:I

    .line 6782
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A09:Lcom/facebook/ads/redexgen/X/7i;

    if-eqz v0, :cond_0

    .line 6783
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A09:Lcom/facebook/ads/redexgen/X/7i;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7i;->A0B()V

    .line 6784
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/0z;->A09:Lcom/facebook/ads/redexgen/X/7i;

    .line 6785
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A08:Lcom/facebook/ads/redexgen/X/7i;

    if-eqz v0, :cond_1

    .line 6786
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A08:Lcom/facebook/ads/redexgen/X/7i;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7i;->A0B()V

    .line 6787
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/0z;->A08:Lcom/facebook/ads/redexgen/X/7i;

    .line 6788
    :cond_1
    return-void
.end method

.method private A07()V
    .locals 1

    .line 6789
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0z;->A06()V

    .line 6790
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A06:Lcom/facebook/ads/redexgen/X/kN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/kN;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/5O;->AGr()V

    .line 6791
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A06:Lcom/facebook/ads/redexgen/X/kN;

    .line 6792
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A00:I

    .line 6793
    return-void
.end method

.method private A08()V
    .locals 0

    .line 6794
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0z;->A07()V

    .line 6795
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0z;->A05()V

    .line 6796
    return-void
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0x33

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/0z;->A0H:[B

    return-void

    :array_0
    .array-data 1
        0x59t
        0x7ft
        0x68t
        0x7et
        0x63t
        0x7et
        0x66t
        0x6ft
        0x2at
        0x6et
        0x6ft
        0x69t
        0x65t
        0x6et
        0x63t
        0x64t
        0x6dt
        0x2at
        0x6ct
        0x6bt
        0x63t
        0x66t
        0x6ft
        0x6et
        0x24t
        0x2at
        0x79t
        0x7et
        0x78t
        0x6ft
        0x6bt
        0x67t
        0x4ct
        0x65t
        0x78t
        0x67t
        0x6bt
        0x7et
        0x37t
        0x39t
        0x8t
        0x15t
        0x19t
        0x3ft
        0x8t
        0x3t
        0x9t
        0x8t
        0x1ft
        0x8t
        0x1ft
    .end array-data
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/o0;)V
    .locals 2

    .line 6797
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0z;->A0G:Lcom/facebook/ads/redexgen/X/Dq;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/o0;->A01:Ljava/util/List;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Dq;->ACw(Ljava/util/List;)V

    .line 6798
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A0G:Lcom/facebook/ads/redexgen/X/Dq;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Dq;->ACv(Lcom/facebook/ads/redexgen/X/o0;)V

    .line 6799
    return-void
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/o0;)V
    .locals 2

    .line 6800
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A0D:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 6801
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0z;->A0D:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6802
    :goto_0
    return-void

    .line 6803
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/0z;->A0A(Lcom/facebook/ads/redexgen/X/o0;)V

    goto :goto_0
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/Dp;)V
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "NEW_METHOD"
        }
        value = "Method to propagate any SubtitleDecoder Error upwards"
    .end annotation

    .line 6804
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A0D:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 6805
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0z;->A0D:Landroid/os/Handler;

    .line 6806
    const/4 v0, 0x1

    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6807
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6808
    :cond_0
    return-void
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/kM;)V
    .locals 4

    .line 6809
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x27

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0z;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A05:Lcom/facebook/ads/redexgen/X/or;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x27

    const/16 v1, 0xc

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0z;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, p1}, Lcom/facebook/ads/redexgen/X/44;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6810
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0z;->A05:Lcom/facebook/ads/redexgen/X/or;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Dp;

    invoke-direct {v0, v1, p1}, Lcom/facebook/ads/redexgen/X/Dp;-><init>(Lcom/facebook/ads/redexgen/X/or;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/0z;->A0C(Lcom/facebook/ads/redexgen/X/Dp;)V

    .line 6811
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0z;->A04()V

    .line 6812
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0z;->A08()V

    .line 6813
    return-void
.end method


# virtual methods
.method public final A1Z()V
    .locals 2

    .line 6814
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A05:Lcom/facebook/ads/redexgen/X/or;

    .line 6815
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A02:J

    .line 6816
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0z;->A04()V

    .line 6817
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A04:J

    .line 6818
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A03:J

    .line 6819
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0z;->A07()V

    .line 6820
    return-void
.end method

.method public final A1a(JZ)V
    .locals 2

    .line 6821
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/0z;->A03:J

    .line 6822
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0z;->A04()V

    .line 6823
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A0A:Z

    .line 6824
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A0B:Z

    .line 6825
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A02:J

    .line 6826
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A00:I

    if-eqz v0, :cond_0

    .line 6827
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0z;->A08()V

    .line 6828
    :goto_0
    return-void

    .line 6829
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0z;->A06()V

    .line 6830
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A06:Lcom/facebook/ads/redexgen/X/kN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/kN;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/5O;->flush()V

    goto :goto_0
.end method

.method public final A1c([Lcom/facebook/ads/redexgen/X/or;JJ)V
    .locals 1

    .line 6831
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/0z;->A04:J

    .line 6832
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A05:Lcom/facebook/ads/redexgen/X/or;

    .line 6833
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A06:Lcom/facebook/ads/redexgen/X/kN;

    if-eqz v0, :cond_0

    .line 6834
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A00:I

    .line 6835
    :goto_0
    return-void

    .line 6836
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0z;->A05()V

    goto :goto_0
.end method

.method public final AAG()Z
    .locals 1

    .line 6837
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A0B:Z

    return v0
.end method

.method public final AAV()Z
    .locals 1

    .line 6838
    const/4 v0, 0x1

    return v0
.end method

.method public final AHn(JJ)V
    .locals 9

    .line 6839
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/0z;->A03:J

    .line 6840
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9Z;->AAE()Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/0z;->A02:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/0z;->A02:J

    cmp-long v0, p1, v1

    if-ltz v0, :cond_0

    .line 6841
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0z;->A06()V

    .line 6842
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/0z;->A0B:Z

    .line 6843
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A0B:Z

    if-eqz v0, :cond_1

    .line 6844
    return-void

    .line 6845
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A08:Lcom/facebook/ads/redexgen/X/7i;

    if-nez v0, :cond_2

    .line 6846
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A06:Lcom/facebook/ads/redexgen/X/kN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/kN;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/kN;->AIx(J)V

    .line 6847
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A06:Lcom/facebook/ads/redexgen/X/kN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/kN;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/5O;->A5l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/7i;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A08:Lcom/facebook/ads/redexgen/X/7i;

    goto :goto_0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/kM; {:try_start_0 .. :try_end_0} :catch_0

    .line 6848
    :catch_0
    move-exception v0

    .line 6849
    .local v0, "e":Lcom/facebook/ads/redexgen/X/kM;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/0z;->A0D(Lcom/facebook/ads/redexgen/X/kM;)V

    .line 6850
    return-void

    .line 6851
    .end local v0    # "e":Lcom/facebook/ads/redexgen/X/kM;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9Z;->A92()I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    .line 6852
    return-void

    .line 6853
    :cond_3
    const/4 v8, 0x0

    .line 6854
    .local v0, "textRendererNeedsUpdate":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A09:Lcom/facebook/ads/redexgen/X/7i;

    if-eqz v0, :cond_4

    .line 6855
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0z;->A00()J

    move-result-wide v1

    .line 6856
    .local v3, "subtitleNextEventTimeUs":J
    :goto_1
    cmp-long v0, v1, p1

    if-gtz v0, :cond_4

    .line 6857
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A01:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A01:I

    .line 6858
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0z;->A00()J

    move-result-wide v1

    .line 6859
    const/4 v8, 0x1

    goto :goto_1

    .line 6860
    .end local v3    # "subtitleNextEventTimeUs":J
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A08:Lcom/facebook/ads/redexgen/X/7i;

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 6861
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/0z;->A08:Lcom/facebook/ads/redexgen/X/7i;

    .line 6862
    .local v3, "nextSubtitle":Lcom/facebook/ads/redexgen/X/7i;
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/5I;->A05()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6863
    if-nez v8, :cond_5

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0z;->A00()J

    move-result-wide v6

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, v6, v1

    if-nez v0, :cond_5

    .line 6864
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A00:I

    if-ne v0, v4, :cond_7

    .line 6865
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0z;->A08()V

    .line 6866
    .end local v3    # "nextSubtitle":Lcom/facebook/ads/redexgen/X/7i;
    :cond_5
    :goto_2
    if-eqz v8, :cond_6

    .line 6867
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A09:Lcom/facebook/ads/redexgen/X/7i;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6868
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/0z;->A01(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/0z;->A02(J)J

    move-result-wide v0

    .line 6869
    .local v5, "presentationTimeUs":J
    nop

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/0z;->A09:Lcom/facebook/ads/redexgen/X/7i;

    invoke-virtual {v2, p1, p2}, Lcom/facebook/ads/redexgen/X/7i;->A7P(J)Ljava/util/List;

    move-result-object v6

    new-instance v2, Lcom/facebook/ads/redexgen/X/o0;

    invoke-direct {v2, v6, v0, v1}, Lcom/facebook/ads/redexgen/X/o0;-><init>(Ljava/util/List;J)V

    .line 6870
    .local v3, "cueGroup":Lcom/facebook/ads/redexgen/X/o0;
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/0z;->A0B(Lcom/facebook/ads/redexgen/X/o0;)V

    .line 6871
    .end local v3    # "cueGroup":Lcom/facebook/ads/redexgen/X/o0;
    .end local v5    # "presentationTimeUs":J
    :cond_6
    iget v6, p0, Lcom/facebook/ads/redexgen/X/0z;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/0z;->A0I:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4f

    if-eq v1, v0, :cond_b

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 6872
    :cond_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0z;->A06()V

    .line 6873
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/0z;->A0B:Z

    goto :goto_2

    .line 6874
    :cond_8
    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/nX;->A01:J

    cmp-long v2, v0, p1

    if-gtz v2, :cond_5

    .line 6875
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/0z;->A09:Lcom/facebook/ads/redexgen/X/7i;

    sget-object v1, Lcom/facebook/ads/redexgen/X/0z;->A0I:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/0z;->A0I:[Ljava/lang/String;

    const-string v1, "SM2l9fwyY7vSK8U9dCan"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "PLBzRsO91bLUZoRphjDr"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v7, :cond_9

    .line 6876
    :goto_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A09:Lcom/facebook/ads/redexgen/X/7i;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7i;->A0B()V

    .line 6877
    :cond_9
    invoke-virtual {v6, p1, p2}, Lcom/facebook/ads/redexgen/X/7i;->A8S(J)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A01:I

    .line 6878
    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/0z;->A09:Lcom/facebook/ads/redexgen/X/7i;

    .line 6879
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/0z;->A08:Lcom/facebook/ads/redexgen/X/7i;

    .line 6880
    const/4 v8, 0x1

    goto :goto_2

    :cond_a
    sget-object v2, Lcom/facebook/ads/redexgen/X/0z;->A0I:[Ljava/lang/String;

    const-string v1, "uDUYlaOON0"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v7, :cond_9

    goto :goto_3

    :cond_b
    sget-object v2, Lcom/facebook/ads/redexgen/X/0z;->A0I:[Ljava/lang/String;

    const-string v1, "ML0YoWWFYnm1pIYkMDlj"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "WzY2c9YM67lXJGPj7nnt"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ne v6, v4, :cond_c

    .line 6881
    return-void

    .line 6882
    :cond_c
    :goto_4
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A0A:Z

    if-nez v0, :cond_14

    .line 6883
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/0z;->A07:Lcom/facebook/ads/redexgen/X/7j;

    .line 6884
    .local v3, "nextInputBuffer":Lcom/facebook/ads/redexgen/X/7j;
    if-nez v2, :cond_e

    .line 6885
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A06:Lcom/facebook/ads/redexgen/X/kN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/kN;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/5O;->A5j()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/7j;

    .line 6886
    if-nez v2, :cond_d

    goto :goto_6

    .line 6887
    :cond_d
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/0z;->A07:Lcom/facebook/ads/redexgen/X/7j;

    .line 6888
    :cond_e
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A00:I

    if-ne v0, v5, :cond_f

    .line 6889
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/5I;->A02(I)V

    .line 6890
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A06:Lcom/facebook/ads/redexgen/X/kN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/kN;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/5O;->AGZ(Ljava/lang/Object;)V

    .line 6891
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/0z;->A07:Lcom/facebook/ads/redexgen/X/7j;

    .line 6892
    iput v4, p0, Lcom/facebook/ads/redexgen/X/0z;->A00:I

    goto :goto_7

    .line 6893
    :cond_f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A0E:Lcom/facebook/ads/redexgen/X/6N;

    const/4 v6, 0x0

    invoke-virtual {p0, v0, v2, v6}, Lcom/facebook/ads/redexgen/X/9Z;->A1R(Lcom/facebook/ads/redexgen/X/6N;Lcom/facebook/ads/redexgen/X/nY;I)I

    move-result v1

    .line 6894
    .local v5, "result":I
    const/4 v0, -0x4

    if-ne v1, v0, :cond_13

    .line 6895
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/5I;->A05()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 6896
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/0z;->A0A:Z

    .line 6897
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/0z;->A0C:Z

    .line 6898
    .end local v7
    :goto_5
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A0C:Z

    if-nez v0, :cond_c

    .line 6899
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A06:Lcom/facebook/ads/redexgen/X/kN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/kN;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/5O;->AGZ(Ljava/lang/Object;)V

    .line 6900
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/0z;->A07:Lcom/facebook/ads/redexgen/X/7j;

    goto :goto_4

    .line 6901
    :cond_10
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A0E:Lcom/facebook/ads/redexgen/X/6N;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6N;->A00:Lcom/facebook/ads/redexgen/X/or;

    .line 6902
    .local v7, "format":Lcom/facebook/ads/redexgen/X/or;
    if-nez v0, :cond_11

    goto :goto_8

    .line 6903
    :cond_11
    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/or;->A0M:J

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/7j;->A00:J

    .line 6904
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/nY;->A0B()V

    .line 6905
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/0z;->A0C:Z

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/5I;->A07()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v6, 0x1

    :cond_12
    and-int/2addr v6, v1

    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/0z;->A0C:Z

    goto :goto_5

    .line 6906
    :cond_13
    const/4 v0, -0x3

    if-ne v1, v0, :cond_c

    .line 6907
    return-void

    .line 6908
    :goto_6
    return-void

    .line 6909
    :goto_7
    return-void

    .line 6910
    :goto_8
    return-void
    :try_end_1
    .catch Lcom/facebook/ads/redexgen/X/kM; {:try_start_1 .. :try_end_1} :catch_1

    .line 6911
    :catch_1
    move-exception v0

    .line 6912
    .local v1, "e":Lcom/facebook/ads/redexgen/X/kM;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/0z;->A0D(Lcom/facebook/ads/redexgen/X/kM;)V

    .line 6913
    .end local v1    # "e":Lcom/facebook/ads/redexgen/X/kM;
    :cond_14
    return-void
.end method

.method public final AJb(Lcom/facebook/ads/redexgen/X/or;)I
    .locals 1

    .line 6914
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0z;->A0F:Lcom/facebook/ads/redexgen/X/Dn;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Dn;->AJc(Lcom/facebook/ads/redexgen/X/or;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6915
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/76;->A00(I)I

    move-result v0

    return v0

    .line 6916
    :cond_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2h;->A0E(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6917
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/76;->A00(I)I

    move-result v0

    return v0

    .line 6918
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/76;->A00(I)I

    move-result v0

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 3

    .line 6919
    const/16 v2, 0x27

    const/16 v1, 0xc

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0z;->A03(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 6920
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 6921
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 6922
    :pswitch_0
    return v1

    .line 6923
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/o0;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/0z;->A0A(Lcom/facebook/ads/redexgen/X/o0;)V

    .line 6924
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
