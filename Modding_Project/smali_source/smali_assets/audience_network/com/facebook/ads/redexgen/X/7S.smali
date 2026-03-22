.class public final Lcom/facebook/ads/redexgen/X/7S;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/nl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Lq;,
        Lcom/facebook/ads/google/android/exoplayer2/upstream/cache/CacheDataSource$CacheIgnoredReason;,
        Lcom/facebook/ads/google/android/exoplayer2/upstream/cache/CacheDataSource$Flags;,
        Lcom/facebook/ads/redexgen/X/ix;
    }
.end annotation


# static fields
.field public static A0M:[B

.field public static A0N:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:Landroid/net/Uri;

.field public A06:Lcom/facebook/ads/redexgen/X/nl;

.field public A07:Lcom/facebook/ads/redexgen/X/56;

.field public A08:Lcom/facebook/ads/redexgen/X/56;

.field public A09:Lcom/facebook/ads/redexgen/X/Lj;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation
.end field

.field public A0A:Lcom/facebook/ads/redexgen/X/Lx;

.field public A0B:Z

.field public A0C:Z

.field public final A0D:Lcom/facebook/ads/redexgen/X/nl;

.field public final A0E:Lcom/facebook/ads/redexgen/X/nl;

.field public final A0F:Lcom/facebook/ads/redexgen/X/nl;

.field public final A0G:Lcom/facebook/ads/redexgen/X/Ln;

.field public final A0H:Lcom/facebook/ads/redexgen/X/Lq;

.field public final A0I:Lcom/facebook/ads/redexgen/X/Lw;

.field public final A0J:Z

.field public final A0K:Z

.field public final A0L:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 435
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "gtbAICrdQ5OiLd8QtlGJkysA4GOuQAyl"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "NB4BeTTq5ijHDPStUBIG2cd4hjVw3Rms"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "uuMr3aWTfRr6VJnGuPPVK2CIrmsp3XMP"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Eb6am5ksZvZ5Hz0HFQHbX0NWivmHdCO7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "qnDH"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "QayiUw4ouBPhcoxDO7fR8OixzHh3DuJf"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "V84YazX1IDZHbq2m95FMlzDl0u9g04ST"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "S22pIk311xlkEmMZRooVtOw4dNPxaWRF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7S;->A0N:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7S;->A05()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ln;Lcom/facebook/ads/redexgen/X/nl;Lcom/facebook/ads/redexgen/X/nl;Lcom/facebook/ads/redexgen/X/4u;Lcom/facebook/ads/redexgen/X/Lw;ILcom/facebook/ads/redexgen/X/31;ILcom/facebook/ads/redexgen/X/Lq;)V
    .locals 2

    .line 21712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21713
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7S;->A0G:Lcom/facebook/ads/redexgen/X/Ln;

    .line 21714
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/7S;->A0D:Lcom/facebook/ads/redexgen/X/nl;

    .line 21715
    if-eqz p5, :cond_6

    :goto_0
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/7S;->A0I:Lcom/facebook/ads/redexgen/X/Lw;

    .line 21716
    and-int/lit8 v0, p6, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A0J:Z

    .line 21717
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A0L:Z

    .line 21718
    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/7S;->A0K:Z

    .line 21719
    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 21720
    if-eqz p7, :cond_1

    .line 21721
    new-instance v0, Lcom/facebook/ads/redexgen/X/9c;

    invoke-direct {v0, p2, p7, p8}, Lcom/facebook/ads/redexgen/X/9c;-><init>(Lcom/facebook/ads/redexgen/X/nl;Lcom/facebook/ads/redexgen/X/31;I)V

    move-object p2, v0

    .line 21722
    :cond_1
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/7S;->A0F:Lcom/facebook/ads/redexgen/X/nl;

    .line 21723
    if-eqz p4, :cond_2

    .line 21724
    new-instance v1, Lcom/facebook/ads/redexgen/X/9a;

    invoke-direct {v1, p2, p4}, Lcom/facebook/ads/redexgen/X/9a;-><init>(Lcom/facebook/ads/redexgen/X/nl;Lcom/facebook/ads/redexgen/X/4u;)V

    .line 21725
    :cond_2
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/7S;->A0E:Lcom/facebook/ads/redexgen/X/nl;

    .line 21726
    :goto_3
    iput-object p9, p0, Lcom/facebook/ads/redexgen/X/7S;->A0H:Lcom/facebook/ads/redexgen/X/Lq;

    .line 21727
    return-void

    .line 21728
    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/9d;->A02:Lcom/facebook/ads/redexgen/X/9d;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A0F:Lcom/facebook/ads/redexgen/X/nl;

    .line 21729
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/7S;->A0E:Lcom/facebook/ads/redexgen/X/nl;

    goto :goto_3

    .line 21730
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 21731
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 21732
    :cond_6
    sget-object p5, Lcom/facebook/ads/redexgen/X/Lw;->A00:Lcom/facebook/ads/redexgen/X/Lw;

    goto :goto_0
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Ln;Lcom/facebook/ads/redexgen/X/nl;Lcom/facebook/ads/redexgen/X/nl;Lcom/facebook/ads/redexgen/X/4u;Lcom/facebook/ads/redexgen/X/Lw;ILcom/facebook/ads/redexgen/X/31;ILcom/facebook/ads/redexgen/X/Lq;Lcom/facebook/ads/redexgen/X/Lo;)V
    .locals 0

    .line 21733
    invoke-direct/range {p0 .. p9}, Lcom/facebook/ads/redexgen/X/7S;-><init>(Lcom/facebook/ads/redexgen/X/Ln;Lcom/facebook/ads/redexgen/X/nl;Lcom/facebook/ads/redexgen/X/nl;Lcom/facebook/ads/redexgen/X/4u;Lcom/facebook/ads/redexgen/X/Lw;ILcom/facebook/ads/redexgen/X/31;ILcom/facebook/ads/redexgen/X/Lq;)V

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/56;)I
    .locals 5

    .line 21734
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A0L:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A0C:Z

    if-eqz v0, :cond_0

    .line 21735
    const/4 v0, 0x0

    return v0

    .line 21736
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A0K:Z

    if-eqz v0, :cond_1

    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/56;->A03:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 21737
    const/4 v0, 0x1

    return v0

    .line 21738
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Ln;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 21739
    invoke-interface {p0, p1}, Lcom/facebook/ads/redexgen/X/Ln;->A7K(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/M8;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/M7;->A01(Lcom/facebook/ads/redexgen/X/M8;)Landroid/net/Uri;

    move-result-object p0

    .line 21740
    .local p0, "redirectedUri":Landroid/net/Uri;
    if-eqz p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    move-object p0, p2

    goto :goto_0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/7S;->A0M:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_1

    aget-byte v3, p1, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/7S;->A0N:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/7S;->A0N:[Ljava/lang/String;

    const-string v1, "VXYuEglycDYgl"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    xor-int/2addr v3, p2

    xor-int/lit8 v0, v3, 0x1c

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A03()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21741
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A06:Lcom/facebook/ads/redexgen/X/nl;

    if-nez v0, :cond_0

    .line 21742
    return-void

    .line 21743
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A06:Lcom/facebook/ads/redexgen/X/nl;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/nl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21744
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/7S;->A07:Lcom/facebook/ads/redexgen/X/56;

    .line 21745
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/7S;->A06:Lcom/facebook/ads/redexgen/X/nl;

    sget-object v1, Lcom/facebook/ads/redexgen/X/7S;->A0N:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_1

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 21746
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/7S;->A0N:[Ljava/lang/String;

    const-string v1, "vHGwoIowQcJHPzt2zHibHrQYTuNv4ZzT"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "k7MJrtNgTHKuOTKhmFADSg5K1rHaIFar"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A0A:Lcom/facebook/ads/redexgen/X/Lx;

    if-eqz v0, :cond_3

    .line 21747
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/7S;->A0G:Lcom/facebook/ads/redexgen/X/Ln;

    sget-object v1, Lcom/facebook/ads/redexgen/X/7S;->A0N:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x34

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/7S;->A0N:[Ljava/lang/String;

    const-string v1, "npCyc8crYVBLSlKGvChDlZdzdxvHOR7S"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "yWpl1AKn1flVHx0rOJ2JJIdMQnxjFkRn"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A0A:Lcom/facebook/ads/redexgen/X/Lx;

    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/Ln;->AGw(Lcom/facebook/ads/redexgen/X/Lx;)V

    .line 21748
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/7S;->A0A:Lcom/facebook/ads/redexgen/X/Lx;

    .line 21749
    :cond_3
    return-void

    .line 21750
    :catchall_0
    move-exception v2

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/7S;->A07:Lcom/facebook/ads/redexgen/X/56;

    .line 21751
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/7S;->A06:Lcom/facebook/ads/redexgen/X/nl;

    .line 21752
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A0A:Lcom/facebook/ads/redexgen/X/Lx;

    if-eqz v0, :cond_4

    .line 21753
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7S;->A0G:Lcom/facebook/ads/redexgen/X/Ln;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A0A:Lcom/facebook/ads/redexgen/X/Lx;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ln;->AGw(Lcom/facebook/ads/redexgen/X/Lx;)V

    .line 21754
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/7S;->A0A:Lcom/facebook/ads/redexgen/X/Lx;

    .line 21755
    :cond_4
    throw v2
.end method

.method private A04()V
    .locals 5

    .line 21756
    const/4 v0, 0x0

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/7S;->A04:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 21757
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A0G:Lcom/facebook/ads/redexgen/X/Ln;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A72()J

    const/16 v2, 0x67

    const/16 v1, 0x11

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7S;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21758
    :cond_0
    return-void
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x78

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7S;->A0M:[B

    return-void

    :array_0
    .array-data 1
        0x19t
        0x3bt
        0x39t
        0x32t
        0x3ft
        0x1et
        0x3bt
        0x2et
        0x3bt
        0x9t
        0x35t
        0x2ft
        0x28t
        0x39t
        0x3ft
        0x16t
        0x3at
        0x20t
        0x39t
        0x31t
        0x3bt
        0x72t
        0x21t
        0x75t
        0x20t
        0x25t
        0x31t
        0x34t
        0x21t
        0x30t
        0x75t
        0x27t
        0x30t
        0x31t
        0x3ct
        0x27t
        0x30t
        0x36t
        0x21t
        0x30t
        0x31t
        0x75t
        0x0t
        0x7t
        0x1ct
        0x7bt
        0x75t
        0x1t
        0x3dt
        0x3ct
        0x26t
        0x75t
        0x38t
        0x3ct
        0x32t
        0x3dt
        0x21t
        0x75t
        0x36t
        0x34t
        0x20t
        0x26t
        0x30t
        0x75t
        0x27t
        0x30t
        0x39t
        0x34t
        0x21t
        0x3ct
        0x23t
        0x30t
        0x75t
        0x0t
        0x7t
        0x1ct
        0x26t
        0x75t
        0x32t
        0x30t
        0x21t
        0x75t
        0x27t
        0x30t
        0x26t
        0x3at
        0x39t
        0x23t
        0x30t
        0x31t
        0x75t
        0x3ct
        0x3bt
        0x36t
        0x3at
        0x27t
        0x27t
        0x30t
        0x36t
        0x21t
        0x39t
        0x2ct
        0x7bt
        0x5ft
        0x5et
        0x73t
        0x51t
        0x53t
        0x58t
        0x55t
        0x54t
        0x72t
        0x49t
        0x44t
        0x55t
        0x43t
        0x62t
        0x55t
        0x51t
        0x54t
    .end array-data
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/56;ZZ)V
    .locals 21
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Parameter isInitSegment and all ot is usages. Setting mFbDataSpecExtension in nextDataSpec. Call to maybeUpdateRedirectedUriMetadata at the end"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21759
    move-object/from16 v6, p0

    move-object/from16 v10, p1

    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/56;->A08:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 21760
    .local v14, "key":Ljava/lang/String;
    if-eqz p3, :cond_15

    sget-object v20, Lcom/facebook/ads/redexgen/X/Ll;->A03:Lcom/facebook/ads/redexgen/X/Ll;

    .line 21761
    .local v9, "reason":Lcom/facebook/ads/redexgen/X/Ll;
    :goto_0
    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/7S;->A0B:Z

    if-eqz v0, :cond_13

    .line 21762
    const/4 v7, 0x0

    .line 21763
    .local v0, "nextSpan":Lcom/facebook/ads/redexgen/X/Lx;
    .local v0, "nextSpan":Lcom/facebook/ads/redexgen/X/Lx;
    :goto_1
    const-wide/16 v13, -0x1

    if-nez v7, :cond_c

    .line 21764
    iget-object v4, v6, Lcom/facebook/ads/redexgen/X/7S;->A0F:Lcom/facebook/ads/redexgen/X/nl;

    .line 21765
    .local v6, "nextDataSource":Lcom/facebook/ads/redexgen/X/nl;
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/56;->A04()Lcom/facebook/ads/redexgen/X/53;

    move-result-object v2

    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/7S;->A03:J

    .line 21766
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/53;->A04(J)Lcom/facebook/ads/redexgen/X/53;

    move-result-object v2

    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/7S;->A00:J

    .line 21767
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/53;->A03(J)Lcom/facebook/ads/redexgen/X/53;

    move-result-object v1

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/7S;->A09:Lcom/facebook/ads/redexgen/X/Lj;

    .line 21768
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/53;->A07(Lcom/facebook/ads/redexgen/X/Lj;)Lcom/facebook/ads/redexgen/X/53;

    move-result-object v0

    .line 21769
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/53;->A09()Lcom/facebook/ads/redexgen/X/56;

    move-result-object v8

    .line 21770
    .local v7, "nextDataSpec":Lcom/facebook/ads/redexgen/X/56;
    .end local v0    # "nextSpan":Lcom/facebook/ads/redexgen/X/Lx;
    .end local v8
    .local v6, "nextSpan":Lcom/facebook/ads/redexgen/X/Lx;
    .local v7, "nextDataSpec":Lcom/facebook/ads/redexgen/X/56;
    :goto_2
    iget-boolean v3, v6, Lcom/facebook/ads/redexgen/X/7S;->A0B:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/7S;->A0N:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_1

    :cond_0
    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/7S;->A0N:[Ljava/lang/String;

    const-string v1, "KvC0Ia1A4x1eGi9X8aRBDgkMlzCJszIJ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "nNrFIIpUFsn1fqvNydhqNDEn907tEQAg"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/7S;->A0F:Lcom/facebook/ads/redexgen/X/nl;

    if-ne v4, v0, :cond_2

    .line 21771
    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/7S;->A03:J

    const-wide/32 v2, 0x19000

    add-long/2addr v0, v2

    .line 21772
    :goto_4
    iput-wide v0, v6, Lcom/facebook/ads/redexgen/X/7S;->A01:J

    .line 21773
    if-eqz p2, :cond_4

    .line 21774
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/7S;->A0A()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 21775
    iget-object v3, v6, Lcom/facebook/ads/redexgen/X/7S;->A0F:Lcom/facebook/ads/redexgen/X/nl;

    sget-object v1, Lcom/facebook/ads/redexgen/X/7S;->A0N:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x75

    if-eq v1, v0, :cond_17

    sget-object v2, Lcom/facebook/ads/redexgen/X/7S;->A0N:[Ljava/lang/String;

    const-string v1, "8XoiTPgLcR8ApVu7jrAIE2ygde6TsOz1"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_3

    .line 21776
    return-void

    .line 21777
    :cond_2
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_4

    .line 21778
    :cond_3
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/7S;->A03()V

    .line 21779
    .end local v0
    :cond_4
    if-eqz v7, :cond_5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Lx;->A03()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21780
    iput-object v7, v6, Lcom/facebook/ads/redexgen/X/7S;->A0A:Lcom/facebook/ads/redexgen/X/Lx;

    .line 21781
    :cond_5
    iput-object v4, v6, Lcom/facebook/ads/redexgen/X/7S;->A06:Lcom/facebook/ads/redexgen/X/nl;

    .line 21782
    iput-object v8, v6, Lcom/facebook/ads/redexgen/X/7S;->A07:Lcom/facebook/ads/redexgen/X/56;

    .line 21783
    const-wide/16 v0, 0x0

    iput-wide v0, v6, Lcom/facebook/ads/redexgen/X/7S;->A02:J

    .line 21784
    invoke-interface {v4, v8}, Lcom/facebook/ads/redexgen/X/nl;->AFy(Lcom/facebook/ads/redexgen/X/56;)J

    move-result-wide v2

    .line 21785
    .local v11, "resolvedLength":J
    new-instance v5, Lcom/facebook/ads/redexgen/X/M9;

    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/M9;-><init>()V

    .line 21786
    .local v0, "mutations":Lcom/facebook/ads/redexgen/X/M9;
    iget-wide v0, v8, Lcom/facebook/ads/redexgen/X/56;->A03:J

    cmp-long v7, v0, v13

    if-nez v7, :cond_8

    cmp-long v8, v2, v13

    sget-object v1, Lcom/facebook/ads/redexgen/X/7S;->A0N:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_6

    sget-object v7, Lcom/facebook/ads/redexgen/X/7S;->A0N:[Ljava/lang/String;

    const-string v1, "AihO48tXyqmUqd3oId9EAGnNfKcJ6kuS"

    const/4 v0, 0x3

    aput-object v1, v7, v0

    if-eqz v8, :cond_8

    .line 21787
    :goto_5
    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/7S;->A00:J

    .line 21788
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/7S;->A03:J

    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/7S;->A00:J

    add-long/2addr v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/7S;->A0N:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    if-eqz v8, :cond_8

    goto :goto_5

    :cond_7
    sget-object v7, Lcom/facebook/ads/redexgen/X/7S;->A0N:[Ljava/lang/String;

    const-string v1, "iUSWGyHOgLgD9ZjfpDxtLA9tGfi2lrY2"

    const/4 v0, 0x3

    aput-object v1, v7, v0

    invoke-static {v5, v2, v3}, Lcom/facebook/ads/redexgen/X/M9;->A00(Lcom/facebook/ads/redexgen/X/M9;J)Lcom/facebook/ads/redexgen/X/M9;

    .line 21789
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/7S;->A0C()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 21790
    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/nl;->A9H()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/7S;->A05:Landroid/net/Uri;

    .line 21791
    iget-object v1, v10, Lcom/facebook/ads/redexgen/X/56;->A06:Landroid/net/Uri;

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/7S;->A05:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/7S;->A0N:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_0

    .line 21792
    .local v3, "isRedirected":Z
    sget-object v2, Lcom/facebook/ads/redexgen/X/7S;->A0N:[Ljava/lang/String;

    const-string v1, "aty3owKlrPhsH"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_b

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/7S;->A05:Landroid/net/Uri;

    :goto_6
    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/M9;->A01(Lcom/facebook/ads/redexgen/X/M9;Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/M9;

    .line 21793
    .end local v3    # "isRedirected":Z
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/7S;->A0D()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 21794
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/7S;->A0G:Lcom/facebook/ads/redexgen/X/Ln;

    invoke-interface {v0, v15, v5}, Lcom/facebook/ads/redexgen/X/Ln;->A46(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/M9;)V

    .line 21795
    :cond_a
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/7S;->A05:Landroid/net/Uri;

    invoke-direct {v6, v15, v0}, Lcom/facebook/ads/redexgen/X/7S;->A08(Ljava/lang/String;Landroid/net/Uri;)V

    .line 21796
    return-void

    .line 21797
    :cond_b
    const/4 v0, 0x0

    goto :goto_6

    .line 21798
    .end local v6    # "nextSpan":Lcom/facebook/ads/redexgen/X/Lx;
    .end local v7    # "nextDataSpec":Lcom/facebook/ads/redexgen/X/56;
    :cond_c
    iget-boolean v3, v7, Lcom/facebook/ads/redexgen/X/Lx;->A05:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/7S;->A0N:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_d

    goto/16 :goto_3

    :cond_d
    sget-object v2, Lcom/facebook/ads/redexgen/X/7S;->A0N:[Ljava/lang/String;

    const-string v1, "u32inRltH66jjh9yXIb3cYFcwSkjtAHW"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_f

    .line 21799
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Lx;->A03:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    .line 21800
    .local v6, "fileUri":Landroid/net/Uri;
    iget-wide v4, v7, Lcom/facebook/ads/redexgen/X/Lx;->A02:J

    .line 21801
    .local v7, "filePositionOffset":J
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/7S;->A03:J

    sub-long/2addr v2, v4

    .line 21802
    .local v10, "positionInFile":J
    iget-wide v0, v7, Lcom/facebook/ads/redexgen/X/Lx;->A01:J

    sub-long/2addr v0, v2

    .line 21803
    .local v12, "length":J
    iget-wide v8, v6, Lcom/facebook/ads/redexgen/X/7S;->A00:J

    cmp-long v12, v8, v13

    if-eqz v12, :cond_e

    .line 21804
    iget-wide v8, v6, Lcom/facebook/ads/redexgen/X/7S;->A00:J

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 21805
    :cond_e
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/56;->A04()Lcom/facebook/ads/redexgen/X/53;

    move-result-object v8

    .line 21806
    invoke-virtual {v8, v11}, Lcom/facebook/ads/redexgen/X/53;->A06(Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/53;

    move-result-object v8

    .line 21807
    invoke-virtual {v8, v4, v5}, Lcom/facebook/ads/redexgen/X/53;->A05(J)Lcom/facebook/ads/redexgen/X/53;

    move-result-object v4

    .line 21808
    invoke-virtual {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/53;->A04(J)Lcom/facebook/ads/redexgen/X/53;

    move-result-object v2

    .line 21809
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/53;->A03(J)Lcom/facebook/ads/redexgen/X/53;

    move-result-object v1

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/7S;->A09:Lcom/facebook/ads/redexgen/X/Lj;

    .line 21810
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/53;->A07(Lcom/facebook/ads/redexgen/X/Lj;)Lcom/facebook/ads/redexgen/X/53;

    move-result-object v0

    .line 21811
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/53;->A09()Lcom/facebook/ads/redexgen/X/56;

    move-result-object v8

    .line 21812
    .local v14, "nextDataSpec":Lcom/facebook/ads/redexgen/X/56;
    iget-object v4, v6, Lcom/facebook/ads/redexgen/X/7S;->A0D:Lcom/facebook/ads/redexgen/X/nl;

    .line 21813
    .end local v7    # "filePositionOffset":J
    .end local v10    # "positionInFile":J
    .end local v12    # "length":J
    .local v6, "nextDataSource":Lcom/facebook/ads/redexgen/X/nl;
    goto/16 :goto_2

    .line 21814
    .end local v6    # "nextDataSource":Lcom/facebook/ads/redexgen/X/nl;
    .end local v14    # "nextDataSpec":Lcom/facebook/ads/redexgen/X/56;
    :cond_f
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Lx;->A04()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 21815
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/7S;->A00:J

    .line 21816
    .local v6, "length":J
    :cond_10
    :goto_7
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/56;->A04()Lcom/facebook/ads/redexgen/X/53;

    move-result-object v4

    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/7S;->A03:J

    .line 21817
    invoke-virtual {v4, v0, v1}, Lcom/facebook/ads/redexgen/X/53;->A04(J)Lcom/facebook/ads/redexgen/X/53;

    move-result-object v0

    .line 21818
    invoke-virtual {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/53;->A03(J)Lcom/facebook/ads/redexgen/X/53;

    move-result-object v1

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/7S;->A09:Lcom/facebook/ads/redexgen/X/Lj;

    .line 21819
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/53;->A07(Lcom/facebook/ads/redexgen/X/Lj;)Lcom/facebook/ads/redexgen/X/53;

    move-result-object v0

    .line 21820
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/53;->A09()Lcom/facebook/ads/redexgen/X/56;

    move-result-object v8

    .line 21821
    .local v8, "nextDataSpec":Lcom/facebook/ads/redexgen/X/56;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/7S;->A0E:Lcom/facebook/ads/redexgen/X/nl;

    if-eqz v0, :cond_12

    .line 21822
    iget-object v4, v6, Lcom/facebook/ads/redexgen/X/7S;->A0E:Lcom/facebook/ads/redexgen/X/nl;

    .local v10, "nextDataSource":Lcom/facebook/ads/redexgen/X/nl;
    goto/16 :goto_2

    .line 21823
    .end local v6    # "length":J
    :cond_11
    iget-wide v2, v7, Lcom/facebook/ads/redexgen/X/Lx;->A01:J

    .line 21824
    .restart local v6    # "length":J
    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/7S;->A00:J

    cmp-long v4, v0, v13

    if-eqz v4, :cond_10

    .line 21825
    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/7S;->A00:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_7

    .line 21826
    .end local v10    # "nextDataSource":Lcom/facebook/ads/redexgen/X/nl;
    :cond_12
    iget-object v4, v6, Lcom/facebook/ads/redexgen/X/7S;->A0F:Lcom/facebook/ads/redexgen/X/nl;

    .line 21827
    .restart local v10    # "nextDataSource":Lcom/facebook/ads/redexgen/X/nl;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/7S;->A0G:Lcom/facebook/ads/redexgen/X/Ln;

    invoke-interface {v0, v7}, Lcom/facebook/ads/redexgen/X/Ln;->AGw(Lcom/facebook/ads/redexgen/X/Lx;)V

    .line 21828
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 21829
    .end local v0    # "mutations":Lcom/facebook/ads/redexgen/X/M9;
    :cond_13
    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/7S;->A0J:Z

    if-eqz v0, :cond_14

    .line 21830
    :try_start_1
    iget-object v14, v6, Lcom/facebook/ads/redexgen/X/7S;->A0G:Lcom/facebook/ads/redexgen/X/Ln;

    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/7S;->A03:J

    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/7S;->A00:J

    move-wide/from16 v18, v0

    move-wide/from16 v16, v2

    invoke-interface/range {v14 .. v20}, Lcom/facebook/ads/redexgen/X/Ln;->AJP(Ljava/lang/String;JJLcom/facebook/ads/redexgen/X/Ll;)Lcom/facebook/ads/redexgen/X/Lx;

    move-result-object v7

    .line 21831
    .restart local v0    # "mutations":Lcom/facebook/ads/redexgen/X/M9;
    goto/16 :goto_1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 21832
    .end local v0    # "mutations":Lcom/facebook/ads/redexgen/X/M9;
    :cond_14
    iget-object v14, v6, Lcom/facebook/ads/redexgen/X/7S;->A0G:Lcom/facebook/ads/redexgen/X/Ln;

    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/7S;->A03:J

    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/7S;->A00:J

    move-object v15, v15

    .end local v14
    .local v5, "key":Ljava/lang/String;
    move-object/from16 v20, v20

    move-wide/from16 v16, v2

    move-wide/from16 v18, v0

    invoke-interface/range {v14 .. v20}, Lcom/facebook/ads/redexgen/X/Ln;->AJQ(Ljava/lang/String;JJLcom/facebook/ads/redexgen/X/Ll;)Lcom/facebook/ads/redexgen/X/iq;

    move-result-object v7

    goto/16 :goto_1

    .line 21833
    :cond_15
    sget-object v20, Lcom/facebook/ads/redexgen/X/Ll;->A06:Lcom/facebook/ads/redexgen/X/Ll;

    goto/16 :goto_0

    .line 21834
    :catchall_0
    move-exception v1

    .line 21835
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Lx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lx;->A03()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 21836
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/7S;->A0G:Lcom/facebook/ads/redexgen/X/Ln;

    invoke-interface {v0, v7}, Lcom/facebook/ads/redexgen/X/Ln;->AGw(Lcom/facebook/ads/redexgen/X/Lx;)V

    .line 21837
    :cond_16
    throw v1

    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 21838
    .end local v0    # "e":Ljava/lang/Throwable;
    .local v0, "e":Ljava/lang/InterruptedException;
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 21839
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

.method private A07(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21840
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A00:J

    .line 21841
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7S;->A0D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21842
    new-instance v2, Lcom/facebook/ads/redexgen/X/M9;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/M9;-><init>()V

    .line 21843
    .local v0, "mutations":Lcom/facebook/ads/redexgen/X/M9;
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A03:J

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/M9;->A00(Lcom/facebook/ads/redexgen/X/M9;J)Lcom/facebook/ads/redexgen/X/M9;

    .line 21844
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A0G:Lcom/facebook/ads/redexgen/X/Ln;

    invoke-interface {v0, p1, v2}, Lcom/facebook/ads/redexgen/X/Ln;->A46(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/M9;)V

    .line 21845
    .end local v0    # "mutations":Lcom/facebook/ads/redexgen/X/M9;
    :cond_0
    return-void
.end method

.method private A08(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 21846
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7S;->A0D()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21847
    return-void

    .line 21848
    :cond_0
    new-instance v3, Lcom/facebook/ads/redexgen/X/M9;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/M9;-><init>()V

    .line 21849
    .local v0, "mutations":Lcom/facebook/ads/redexgen/X/M9;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A05:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 21850
    .local v1, "isRedirected":Z
    if-eqz v0, :cond_2

    .line 21851
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/7S;->A05:Landroid/net/Uri;

    sget-object v1, Lcom/facebook/ads/redexgen/X/7S;->A0N:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x34

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/7S;->A0N:[Ljava/lang/String;

    const-string v1, "HwBuIJEC6JIKumxqgSDJ0pUKIwQFYzQv"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "1FgFIXgVQckXZ73NbznNhujKeCbi6Slt"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v3, v4}, Lcom/facebook/ads/redexgen/X/M9;->A01(Lcom/facebook/ads/redexgen/X/M9;Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/M9;

    goto :goto_0

    .line 21852
    :cond_2
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/M9;->A01(Lcom/facebook/ads/redexgen/X/M9;Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/M9;

    .line 21853
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A0G:Lcom/facebook/ads/redexgen/X/Ln;

    invoke-interface {v0, p1, v3}, Lcom/facebook/ads/redexgen/X/Ln;->A46(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/M9;)V

    goto :goto_1
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/Lk; {:try_start_0 .. :try_end_0} :catch_0

    .line 21854
    :catch_0
    move-exception v4

    .line 21855
    .local v2, "e":Lcom/facebook/ads/redexgen/X/Lk;
    const/16 v2, 0xf

    const/16 v1, 0x58

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7S;->A02(III)Ljava/lang/String;

    move-result-object v3

    .line 21856
    .local v3, "message":Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7S;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21857
    .end local v2    # "e":Lcom/facebook/ads/redexgen/X/Lk;
    .end local v3    # "message":Ljava/lang/String;
    :goto_1
    return-void
.end method

.method private A09(Ljava/lang/Throwable;)V
    .locals 1

    .line 21858
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7S;->A0B()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/Lk;

    if-eqz v0, :cond_1

    .line 21859
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A0C:Z

    .line 21860
    :cond_1
    return-void
.end method

.method private A0A()Z
    .locals 2

    .line 21861
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7S;->A06:Lcom/facebook/ads/redexgen/X/nl;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A0F:Lcom/facebook/ads/redexgen/X/nl;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0B()Z
    .locals 2

    .line 21862
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7S;->A06:Lcom/facebook/ads/redexgen/X/nl;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A0D:Lcom/facebook/ads/redexgen/X/nl;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0C()Z
    .locals 1

    .line 21863
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7S;->A0B()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private A0D()Z
    .locals 2

    .line 21864
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7S;->A06:Lcom/facebook/ads/redexgen/X/nl;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A0E:Lcom/facebook/ads/redexgen/X/nl;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0E()Lcom/facebook/ads/redexgen/X/Ln;
    .locals 1

    .line 21865
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A0G:Lcom/facebook/ads/redexgen/X/Ln;

    return-object v0
.end method

.method public final A0F()Lcom/facebook/ads/redexgen/X/Lw;
    .locals 1

    .line 21866
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A0I:Lcom/facebook/ads/redexgen/X/Lw;

    return-object v0
.end method

.method public final A3v(Lcom/facebook/ads/redexgen/X/5H;)V
    .locals 1

    .line 21867
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21868
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A0D:Lcom/facebook/ads/redexgen/X/nl;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/nl;->A3v(Lcom/facebook/ads/redexgen/X/5H;)V

    .line 21869
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A0F:Lcom/facebook/ads/redexgen/X/nl;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/nl;->A3v(Lcom/facebook/ads/redexgen/X/5H;)V

    .line 21870
    return-void
.end method

.method public final A8l()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 21871
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7S;->A0C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21872
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A0F:Lcom/facebook/ads/redexgen/X/nl;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/nl;->A8l()Ljava/util/Map;

    move-result-object v0

    .line 21873
    :goto_0
    return-object v0

    .line 21874
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public final A9H()Landroid/net/Uri;
    .locals 1

    .line 21875
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A05:Landroid/net/Uri;

    return-object v0
.end method

.method public final AFy(Lcom/facebook/ads/redexgen/X/56;)J
    .locals 11
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "usage of fbDataSpecExtension and the check for isInitSegment"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21876
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A0I:Lcom/facebook/ads/redexgen/X/Lw;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Lw;->A4d(Lcom/facebook/ads/redexgen/X/56;)Ljava/lang/String;

    move-result-object v1

    .line 21877
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/56;->A04()Lcom/facebook/ads/redexgen/X/53;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/53;->A08(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/53;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/53;->A09()Lcom/facebook/ads/redexgen/X/56;

    move-result-object v7

    .line 21878
    .local v1, "requestDataSpec":Lcom/facebook/ads/redexgen/X/56;
    iput-object v7, p0, Lcom/facebook/ads/redexgen/X/7S;->A08:Lcom/facebook/ads/redexgen/X/56;

    .line 21879
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7S;->A0G:Lcom/facebook/ads/redexgen/X/Ln;

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/56;->A06:Landroid/net/Uri;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7S;->A01(Lcom/facebook/ads/redexgen/X/Ln;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A05:Landroid/net/Uri;

    .line 21880
    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/56;->A04:J

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/7S;->A03:J

    .line 21881
    iget-object v2, p1, Lcom/facebook/ads/redexgen/X/56;->A07:Lcom/facebook/ads/redexgen/X/Lj;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Lj;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/Lj;-><init>(Lcom/facebook/ads/redexgen/X/Lj;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A09:Lcom/facebook/ads/redexgen/X/Lj;

    .line 21882
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7S;->A00(Lcom/facebook/ads/redexgen/X/56;)I

    move-result v2

    .line 21883
    .local v2, "reason":I
    const/4 v0, -0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    if-eq v2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A0B:Z

    .line 21884
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A0B:Z

    .line 21885
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A0B:Z

    const-wide/16 v9, 0x0

    const-wide/16 v4, -0x1

    if-eqz v0, :cond_7

    .line 21886
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/7S;->A00:J

    .line 21887
    .restart local p4
    :cond_1
    :goto_1
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/56;->A07:Lcom/facebook/ads/redexgen/X/Lj;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Lj;->A08:I

    if-gtz v0, :cond_6

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/56;->A07:Lcom/facebook/ads/redexgen/X/Lj;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Lj;->A07:I

    if-gtz v0, :cond_6

    .line 21888
    .local v3, "isInitSegment":Z
    :goto_2
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/56;->A03:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_2

    .line 21889
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A00:J

    cmp-long v2, v0, v4

    if-nez v2, :cond_5

    .line 21890
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/56;->A03:J

    .line 21891
    :goto_3
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A00:J

    .line 21892
    :cond_2
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A00:J

    cmp-long v2, v0, v9

    if-gtz v2, :cond_3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A00:J

    cmp-long v2, v0, v4

    if-nez v2, :cond_4

    .line 21893
    :cond_3
    invoke-direct {p0, v7, v8, v6}, Lcom/facebook/ads/redexgen/X/7S;->A06(Lcom/facebook/ads/redexgen/X/56;ZZ)V

    .line 21894
    :cond_4
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/56;->A03:J

    cmp-long v0, v1, v4

    if-eqz v0, :cond_8

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/56;->A03:J

    goto :goto_4

    .line 21895
    :cond_5
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/7S;->A00:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/56;->A03:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_3

    .line 21896
    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    .line 21897
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A0G:Lcom/facebook/ads/redexgen/X/Ln;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Ln;->A7K(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/M8;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M7;->A00(Lcom/facebook/ads/redexgen/X/M8;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A00:J

    .line 21898
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A00:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 21899
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/7S;->A00:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/56;->A04:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/7S;->A00:J

    .line 21900
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A00:J

    cmp-long v2, v0, v9

    if-ltz v2, :cond_9

    goto :goto_1

    .line 21901
    :cond_8
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A00:J

    :goto_4
    return-wide v0

    .line 21902
    :cond_9
    const/16 v1, 0x7d8

    new-instance v0, Lcom/facebook/ads/redexgen/X/4z;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4z;-><init>(I)V

    .end local p4
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21903
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "requestDataSpec":Lcom/facebook/ads/redexgen/X/56;
    .end local v2    # "reason":I
    .end local v3    # "isInitSegment":Z
    :catchall_0
    move-exception v0

    .line 21904
    .local v0, "e":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/7S;->A09(Ljava/lang/Throwable;)V

    .line 21905
    throw v0
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21906
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A08:Lcom/facebook/ads/redexgen/X/56;

    .line 21907
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A05:Landroid/net/Uri;

    .line 21908
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/7S;->A03:J

    .line 21909
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7S;->A04()V

    .line 21910
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7S;->A03()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21911
    :catchall_0
    move-exception v0

    .line 21912
    .local v0, "e":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/7S;->A09(Ljava/lang/Throwable;)V

    .line 21913
    throw v0

    .line 21914
    :goto_0
    return-void
.end method

.method public final read([BII)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21915
    move-object/from16 v7, p0

    move-object v7, v7

    const/4 v5, 0x0

    move/from16 v6, p3

    if-nez v6, :cond_0

    .line 21916
    return v5

    .line 21917
    :cond_0
    iget-wide v0, v7, Lcom/facebook/ads/redexgen/X/7S;->A00:J

    const/4 v14, -0x1

    const-wide/16 v15, 0x0

    cmp-long v2, v0, v15

    if-nez v2, :cond_1

    .line 21918
    return v14

    .line 21919
    :cond_1
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/7S;->A08:Lcom/facebook/ads/redexgen/X/56;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/56;

    .line 21920
    .local v3, "requestDataSpec":Lcom/facebook/ads/redexgen/X/56;
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/7S;->A07:Lcom/facebook/ads/redexgen/X/56;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/ads/redexgen/X/56;

    .line 21921
    .local v4, "currentDataSpec":Lcom/facebook/ads/redexgen/X/56;
    :try_start_0
    iget-wide v2, v7, Lcom/facebook/ads/redexgen/X/7S;->A03:J

    iget-wide v0, v7, Lcom/facebook/ads/redexgen/X/7S;->A01:J

    cmp-long v8, v2, v0

    if-ltz v8, :cond_2

    .line 21922
    const/4 v0, 0x1

    invoke-direct {v7, v4, v0, v5}, Lcom/facebook/ads/redexgen/X/7S;->A06(Lcom/facebook/ads/redexgen/X/56;ZZ)V

    .line 21923
    :cond_2
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/7S;->A06:Lcom/facebook/ads/redexgen/X/nl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/nl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move/from16 v9, p2

    move-object/from16 v11, p1

    invoke-interface {v0, v11, v9, v6}, Lcom/facebook/ads/redexgen/X/20;->read([BII)I

    move-result v8

    .line 21924
    .local v8, "bytesRead":I
    const-wide/16 v12, -0x1

    if-eq v8, v14, :cond_4

    .line 21925
    invoke-direct {v7}, Lcom/facebook/ads/redexgen/X/7S;->A0B()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21926
    iget-wide v2, v7, Lcom/facebook/ads/redexgen/X/7S;->A04:J

    int-to-long v0, v8

    add-long/2addr v2, v0

    iput-wide v2, v7, Lcom/facebook/ads/redexgen/X/7S;->A04:J

    .line 21927
    :cond_3
    iget-wide v2, v7, Lcom/facebook/ads/redexgen/X/7S;->A03:J

    int-to-long v0, v8

    add-long/2addr v2, v0

    iput-wide v2, v7, Lcom/facebook/ads/redexgen/X/7S;->A03:J

    .line 21928
    iget-wide v2, v7, Lcom/facebook/ads/redexgen/X/7S;->A02:J

    int-to-long v0, v8

    add-long/2addr v2, v0

    iput-wide v2, v7, Lcom/facebook/ads/redexgen/X/7S;->A02:J

    .line 21929
    iget-wide v1, v7, Lcom/facebook/ads/redexgen/X/7S;->A00:J

    cmp-long v0, v1, v12

    if-eqz v0, :cond_8

    .line 21930
    iget-wide v2, v7, Lcom/facebook/ads/redexgen/X/7S;->A00:J

    int-to-long v0, v8

    sub-long/2addr v2, v0

    iput-wide v2, v7, Lcom/facebook/ads/redexgen/X/7S;->A00:J

    goto :goto_0

    .line 21931
    :cond_4
    invoke-direct {v7}, Lcom/facebook/ads/redexgen/X/7S;->A0C()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-wide v0, v10, Lcom/facebook/ads/redexgen/X/56;->A03:J

    cmp-long v2, v0, v12

    if-eqz v2, :cond_5

    iget-wide v2, v7, Lcom/facebook/ads/redexgen/X/7S;->A02:J

    iget-wide v0, v10, Lcom/facebook/ads/redexgen/X/56;->A03:J

    cmp-long v10, v2, v0

    if-gez v10, :cond_6

    .line 21932
    :cond_5
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/56;->A08:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/7S;->A07(Ljava/lang/String;)V

    goto :goto_0

    .line 21933
    :cond_6
    iget-wide v0, v7, Lcom/facebook/ads/redexgen/X/7S;->A00:J

    cmp-long v2, v0, v15

    if-gtz v2, :cond_7

    iget-wide v0, v7, Lcom/facebook/ads/redexgen/X/7S;->A00:J

    const-wide/16 v12, -0x1

    cmp-long v2, v0, v12

    if-nez v2, :cond_8

    .line 21934
    :cond_7
    invoke-direct {v7}, Lcom/facebook/ads/redexgen/X/7S;->A03()V

    .line 21935
    invoke-direct {v7, v4, v5, v5}, Lcom/facebook/ads/redexgen/X/7S;->A06(Lcom/facebook/ads/redexgen/X/56;ZZ)V

    .line 21936
    invoke-virtual {v7, v11, v9, v6}, Lcom/facebook/ads/redexgen/X/7S;->read([BII)I

    move-result v0

    return v0

    .line 21937
    :cond_8
    :goto_0
    return v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21938
    .end local v8    # "bytesRead":I
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 21939
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/7S;->A09(Ljava/lang/Throwable;)V

    .line 21940
    throw v0
.end method
