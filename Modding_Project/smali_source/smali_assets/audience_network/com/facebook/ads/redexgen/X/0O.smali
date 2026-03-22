.class public final Lcom/facebook/ads/redexgen/X/0O;
.super Lcom/facebook/ads/redexgen/X/14;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/FC;,
        Lcom/facebook/ads/redexgen/X/la;,
        Lcom/facebook/ads/redexgen/X/FA;
    }
.end annotation


# static fields
.field public static A0z:Z

.field public static A10:Z

.field public static A11:[B

.field public static A12:[Ljava/lang/String;

.field public static final A13:[I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/la;

.field public A01:F

.field public A02:F

.field public A03:F

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:I

.field public A0A:I

.field public A0B:I

.field public A0C:I

.field public A0D:I

.field public A0E:I

.field public A0F:I

.field public A0G:I

.field public A0H:I

.field public A0I:J

.field public A0J:J

.field public A0K:J

.field public A0L:J

.field public A0M:J

.field public A0N:J

.field public A0O:J

.field public A0P:J

.field public A0Q:J

.field public A0R:J

.field public A0S:Landroid/media/MediaFormat;

.field public A0T:Landroid/view/Surface;

.field public A0U:Landroid/view/Surface;

.field public A0V:Lcom/facebook/ads/redexgen/X/o4;

.field public A0W:Lcom/facebook/ads/redexgen/X/FA;

.field public A0X:Lcom/facebook/ads/redexgen/X/FQ;

.field public A0Y:Ljava/lang/Object;

.field public A0Z:Z

.field public A0a:Z

.field public A0b:Z

.field public A0c:Z

.field public A0d:Z

.field public A0e:Z

.field public A0f:Z

.field public A0g:Z

.field public A0h:Z
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "NEW_CLASS_ARG"
        }
        value = "D69547806: Only become ready once we have a surface"
    .end annotation
.end field

.field public A0i:Z

.field public A0j:Z

.field public A0k:Z

.field public final A0l:I

.field public final A0m:I

.field public final A0n:I

.field public final A0o:I

.field public final A0p:J

.field public final A0q:Landroid/content/Context;

.field public final A0r:Lcom/facebook/ads/redexgen/X/FC;

.field public final A0s:Lcom/facebook/ads/redexgen/X/FV;

.field public final A0t:Lcom/facebook/ads/redexgen/X/FY;

.field public final A0u:Lcom/facebook/ads/redexgen/X/Fn;

.field public final A0v:Z

.field public final A0w:Z

.field public final A0x:[J

.field public final A0y:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 4
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1NrdYD1"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "e5CK9xPn181JbTmOtknpsRCTtEnfDjR7"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "JOO2xDl09pGw2ctw4YX5NjUR9G0o3YSd"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "78GGNN1Oy"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "9AKZq2G4NCUeKdGegrXYJ0IAO08zLsd4"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "iWBlsDv"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "UMYjsOFgfK8VKq5PmkWlrwAU0Drwgr0y"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "VHiTYYEOZZ1JgajrOOPlCJmFeSyZZTnO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/0O;->A0P()V

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/0O;->A13:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/hv;Lcom/facebook/ads/redexgen/X/hs;Lcom/facebook/ads/redexgen/X/Ar;JLcom/facebook/ads/redexgen/X/9U;ZZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/Fo;IIIII)V
    .locals 17
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "FEATURE_LOGIC"
        }
        value = "D69547806: Only become ready once we have a surface"
    .end annotation

    .line 3643
    move-object/from16 v6, p0

    const/4 v8, 0x2

    move-object/from16 v7, p0

    move/from16 v16, p15

    move/from16 v15, p14

    move/from16 v14, p9

    move/from16 v13, p8

    move-object/from16 v12, p7

    move-object/from16 v11, p4

    move-object/from16 v10, p3

    move-object/from16 v9, p2

    invoke-direct/range {v7 .. v16}, Lcom/facebook/ads/redexgen/X/14;-><init>(ILcom/facebook/ads/redexgen/X/hv;Lcom/facebook/ads/redexgen/X/hs;Lcom/facebook/ads/redexgen/X/Ar;Lcom/facebook/ads/redexgen/X/9U;ZZII)V

    .line 3644
    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/facebook/ads/redexgen/X/0O;->A0e:Z

    .line 3645
    iput-boolean v7, v6, Lcom/facebook/ads/redexgen/X/0O;->A0Z:Z

    .line 3646
    const/4 v8, 0x0

    iput-boolean v8, v6, Lcom/facebook/ads/redexgen/X/0O;->A0f:Z

    .line 3647
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/0O;->A0K:J

    .line 3648
    iput-boolean v8, v6, Lcom/facebook/ads/redexgen/X/0O;->A0c:Z

    .line 3649
    iput-boolean v8, v6, Lcom/facebook/ads/redexgen/X/0O;->A0h:Z

    .line 3650
    sget-object v0, Lcom/facebook/ads/redexgen/X/i2;->A1r:Lcom/facebook/ads/redexgen/X/i2;

    .line 3651
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/i5;->A03(Lcom/facebook/ads/redexgen/X/i2;)Z

    move-result v0

    iput-boolean v0, v6, Lcom/facebook/ads/redexgen/X/0O;->A0w:Z

    .line 3652
    sget-object v0, Lcom/facebook/ads/redexgen/X/i2;->A0w:Lcom/facebook/ads/redexgen/X/i2;

    .line 3653
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/i5;->A03(Lcom/facebook/ads/redexgen/X/i2;)Z

    move-result v0

    iput-boolean v0, v6, Lcom/facebook/ads/redexgen/X/0O;->A0h:Z

    .line 3654
    move-wide/from16 v0, p5

    iput-wide v0, v6, Lcom/facebook/ads/redexgen/X/0O;->A0p:J

    .line 3655
    move/from16 v0, p12

    iput v0, v6, Lcom/facebook/ads/redexgen/X/0O;->A0l:I

    .line 3656
    move/from16 v0, p13

    iput v0, v6, Lcom/facebook/ads/redexgen/X/0O;->A0m:I

    .line 3657
    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/0O;->A0q:Landroid/content/Context;

    .line 3658
    move/from16 v0, p16

    iput v0, v6, Lcom/facebook/ads/redexgen/X/0O;->A0n:I

    .line 3659
    new-instance v0, Lcom/facebook/ads/redexgen/X/FY;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/FY;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/0O;->A0t:Lcom/facebook/ads/redexgen/X/FY;

    .line 3660
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/0O;->A0q:Landroid/content/Context;

    new-instance v0, Lcom/facebook/ads/redexgen/X/FV;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/FV;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/0O;->A0s:Lcom/facebook/ads/redexgen/X/FV;

    .line 3661
    new-instance v0, Lcom/facebook/ads/redexgen/X/Fn;

    move-object/from16 v1, p11

    move-object/from16 v4, p10

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/Fn;-><init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Fo;)V

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/0O;->A0u:Lcom/facebook/ads/redexgen/X/Fn;

    .line 3662
    iget-object v4, v6, Lcom/facebook/ads/redexgen/X/0O;->A0s:Lcom/facebook/ads/redexgen/X/FV;

    iget-boolean v1, v6, Lcom/facebook/ads/redexgen/X/0O;->A0w:Z

    new-instance v0, Lcom/facebook/ads/redexgen/X/FC;

    invoke-direct {v0, v4, v6, v1}, Lcom/facebook/ads/redexgen/X/FC;-><init>(Lcom/facebook/ads/redexgen/X/FV;Lcom/facebook/ads/redexgen/X/0O;Z)V

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    .line 3663
    invoke-static {}, Lcom/facebook/ads/redexgen/X/0O;->A0i()Z

    move-result v0

    iput-boolean v0, v6, Lcom/facebook/ads/redexgen/X/0O;->A0v:Z

    .line 3664
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x1d

    if-ne v1, v0, :cond_0

    sget-object v5, Lcom/facebook/ads/redexgen/X/4a;->A06:Ljava/lang/String;

    const/16 v4, 0x32b

    const/4 v1, 0x6

    const/16 v0, 0x3e

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x1

    :cond_0
    iput-boolean v8, v6, Lcom/facebook/ads/redexgen/X/0O;->A0a:Z

    .line 3665
    const/16 v1, 0xa

    new-array v0, v1, [J

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/0O;->A0x:[J

    .line 3666
    new-array v0, v1, [J

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/0O;->A0y:[J

    .line 3667
    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/0O;->A0R:J

    .line 3668
    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/0O;->A0O:J

    .line 3669
    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/0O;->A0M:J

    .line 3670
    const/4 v0, -0x1

    iput v0, v6, Lcom/facebook/ads/redexgen/X/0O;->A08:I

    .line 3671
    iput v0, v6, Lcom/facebook/ads/redexgen/X/0O;->A06:I

    .line 3672
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, v6, Lcom/facebook/ads/redexgen/X/0O;->A01:F

    .line 3673
    iput v0, v6, Lcom/facebook/ads/redexgen/X/0O;->A02:F

    .line 3674
    iput v7, v6, Lcom/facebook/ads/redexgen/X/0O;->A0H:I

    .line 3675
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/0O;->A0F()V

    .line 3676
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/or;)I
    .locals 4

    .line 3677
    iget v1, p1, Lcom/facebook/ads/redexgen/X/or;->A0B:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    .line 3678
    const/4 v3, 0x0

    .line 3679
    .local v0, "totalInitializationDataSize":I
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0X:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 3680
    .local v1, "initializationDataCount":I
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3681
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0X:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    add-int/2addr v3, v0

    .line 3682
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3683
    .end local v2    # "i":I
    :cond_0
    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0B:I

    add-int/2addr v0, v3

    return v0

    .line 3684
    .end local v0    # "totalInitializationDataSize":I
    .end local v1    # "initializationDataCount":I
    :cond_1
    iget v2, p1, Lcom/facebook/ads/redexgen/X/or;->A0L:I

    .line 3685
    .local v0, "width":I
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0A:I

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A02(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Ar;Lcom/facebook/ads/redexgen/X/or;Z)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Av;
        }
    .end annotation

    .line 3686
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    .line 3687
    .local v0, "mimeType":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2h;->A0F(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 3688
    return v3

    .line 3689
    :cond_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0O:Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    .line 3690
    .local v1, "drmInitData":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    const/4 v7, 0x1

    if-eqz v0, :cond_3

    const/4 v4, 0x1

    .line 3691
    .local v4, "requiresSecureDecryption":Z
    :goto_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    .line 3692
    invoke-interface {p0, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Ar;->A7g(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v2

    .line 3693
    .local v5, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 3694
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/0O;->A0C(Lcom/facebook/ads/redexgen/X/Ar;Lcom/facebook/ads/redexgen/X/or;)Ljava/util/List;

    move-result-object v2

    .line 3695
    :cond_1
    const/4 v1, 0x2

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3696
    if-eqz v4, :cond_2

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    .line 3697
    invoke-interface {p0, v0, v3, v3}, Lcom/facebook/ads/redexgen/X/Ar;->A7g(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 3698
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3699
    const/4 v7, 0x2

    .line 3700
    :cond_2
    return v7

    .line 3701
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 3702
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3703
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/76;->A00(I)I

    move-result v0

    return v0

    .line 3704
    :cond_5
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/14;->A1G(Lcom/facebook/ads/redexgen/X/or;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3705
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/76;->A00(I)I

    move-result v0

    return v0

    .line 3706
    :cond_6
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/AR;

    .line 3707
    .local v6, "decoderInfo":Lcom/facebook/ads/redexgen/X/AR;
    invoke-virtual {v4, p1}, Lcom/facebook/ads/redexgen/X/AR;->A0S(Lcom/facebook/ads/redexgen/X/or;)Z

    move-result v6

    .line 3708
    .local v7, "decoderCapable":Z
    if-eqz v6, :cond_7

    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0L:I

    if-lez v0, :cond_7

    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0A:I

    if-lez v0, :cond_7

    .line 3709
    sget v6, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v5, 0x15

    sget-object v1, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_10

    sget-object v2, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v1, "IH389xfTqQddwzM1XHaKnp7MZCz6cb7i"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "af13jltpF5ZHHZjQxHJ609Zz958wUZpm"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-lt v6, v5, :cond_d

    .line 3710
    iget v5, p1, Lcom/facebook/ads/redexgen/X/or;->A0L:I

    iget v2, p1, Lcom/facebook/ads/redexgen/X/or;->A0A:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A01:F

    float-to-double v0, v0

    .line 3711
    invoke-virtual {v4, v5, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/AR;->A0R(IID)Z

    move-result v6

    .line 3712
    :cond_7
    :goto_1
    iget-boolean v5, v4, Lcom/facebook/ads/redexgen/X/AR;->A04:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_b

    sget-object v2, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v1, "9b4CG0tnJeiPU0k4PARWVGoy4qv"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v5, :cond_c

    :goto_2
    const/16 v5, 0x10

    .line 3713
    .local v3, "adaptiveSupport":I
    :goto_3
    iget-boolean v4, v4, Lcom/facebook/ads/redexgen/X/AR;->A08:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v1, "WfKDcH5FGJ5C30XN1qoZOnsI3qPSaUZa"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v4, :cond_8

    :goto_4
    const/16 v3, 0x20

    .line 3714
    .local v2, "tunnelingSupport":I
    :cond_8
    if-eqz v6, :cond_9

    const/4 v0, 0x4

    .line 3715
    .local p0, "formatSupport":I
    :goto_5
    or-int/2addr v5, v3

    or-int/2addr v5, v0

    return v5

    .line 3716
    :cond_9
    const/4 v0, 0x3

    goto :goto_5

    :cond_a
    if-eqz v4, :cond_8

    goto :goto_4

    :cond_b
    if-eqz v5, :cond_c

    goto :goto_2

    .line 3717
    :cond_c
    const/16 v5, 0x8

    goto :goto_3

    .line 3718
    :cond_d
    iget v6, p1, Lcom/facebook/ads/redexgen/X/or;->A0L:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0A:I

    mul-int/2addr v6, v0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ay;->A00()I

    move-result v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_e

    sget-object v2, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v1, "ecceu4zvNIhSM2cVW4sHEkLyyuMr8ggY"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-gt v6, v5, :cond_f

    :goto_6
    move v6, v7

    .line 3719
    if-nez v6, :cond_7

    .line 3720
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x17c

    const/16 v1, 0x1d

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0L:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v2, 0x6ef

    const/4 v1, 0x1

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0A:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v2, 0x482

    const/4 v1, 0x3

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/4a;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v2, 0x481

    const/4 v1, 0x1

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x2aa

    const/16 v1, 0x17

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/44;->A04(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    sget-object v2, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v1, "Kv9mbenvGpQB93bFl6W05JZGB7qp372O"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "bO17OsYGhLw9DTwpfBLbbIHXKJZDjwiV"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-gt v6, v5, :cond_f

    goto :goto_6

    .line 3721
    :cond_f
    const/4 v7, 0x0

    goto :goto_6

    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02(Ljava/lang/String;II)I
    .locals 7

    .line 3722
    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    if-ne p2, v3, :cond_1

    .line 3723
    .end local v0
    .end local v1
    :cond_0
    return v3

    .line 3724
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_2
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 3725
    return v3

    .line 3726
    :sswitch_0
    const/16 v2, 0x6bc

    const/16 v1, 0x13

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x6a9

    const/16 v1, 0x13

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x677

    const/16 v1, 0x9

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const/16 v2, 0x69c

    const/16 v1, 0xd

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v1, "BSk60PaXf0Sk22Sw2ltCbt0PrRKp4yQI"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const/16 v6, 0x692

    const/16 v5, 0xa

    const/16 v4, 0x5e

    sget-object v1, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v1, "tnE0zKFGRA1mCoLoHHoslqD8Jr5mgPU8"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "qP878wwRxP7hWQjb5gRcbhQ3e4xfipWz"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    const/4 v0, 0x4

    goto/16 :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v1, "kyKsBwQU8xCkRSkCaxSqqZifTpXgRXEu"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :sswitch_5
    const/16 v2, 0x663

    const/16 v1, 0xa

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 3727
    :pswitch_0
    mul-int/2addr p1, p2

    .line 3728
    .local v0, "maxPixels":I
    const/4 v0, 0x4

    .line 3729
    .local v1, "minCompressionRatio":I
    goto :goto_2

    .line 3730
    .end local v0    # "maxPixels":I
    .end local v1    # "minCompressionRatio":I
    :pswitch_1
    mul-int/2addr p1, p2

    .line 3731
    .restart local v0    # "maxPixels":I
    const/4 v0, 0x2

    .line 3732
    .restart local v1    # "minCompressionRatio":I
    goto :goto_2

    .line 3733
    .end local v0    # "maxPixels":I
    .end local v1    # "minCompressionRatio":I
    :pswitch_2
    const/16 v2, 0xb3

    const/16 v1, 0xe

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/4a;->A06:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3734
    return v3

    .line 3735
    :cond_4
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/4a;->A05(II)I

    move-result v1

    invoke-static {p2, v0}, Lcom/facebook/ads/redexgen/X/4a;->A05(II)I

    move-result v0

    mul-int/2addr v1, v0

    mul-int/lit8 v0, v1, 0x10

    mul-int/lit8 p1, v0, 0x10

    .line 3736
    .restart local v0    # "maxPixels":I
    const/4 v0, 0x2

    .line 3737
    .restart local v1    # "minCompressionRatio":I
    goto :goto_2

    .line 3738
    .end local v0    # "maxPixels":I
    .end local v1    # "minCompressionRatio":I
    :pswitch_3
    mul-int/2addr p1, p2

    .line 3739
    .restart local v0    # "maxPixels":I
    const/4 v0, 0x2

    .line 3740
    .restart local v1    # "minCompressionRatio":I
    :goto_2
    mul-int/lit8 v1, p1, 0x3

    mul-int/lit8 v0, v0, 0x2

    div-int/2addr v1, v0

    return v1

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private A03(JJJJZ)J
    .locals 4

    .line 3741
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/14;->A1f()F

    move-result v0

    float-to-double v0, v0

    .line 3742
    .local v0, "playbackSpeed":D
    sub-long/2addr p7, p1

    long-to-double v2, p7

    div-double/2addr v2, v0

    double-to-long v0, v2

    .line 3743
    .local v2, "earlyUs":J
    if-eqz p9, :cond_0

    .line 3744
    sub-long/2addr p5, p3

    sub-long/2addr v0, p5

    .line 3745
    :cond_0
    return-wide v0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/0O;)J
    .locals 1

    .line 3746
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0L:J

    return-wide v0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/0O;JJJJZ)J
    .locals 0

    .line 3747
    invoke-direct/range {p0 .. p9}, Lcom/facebook/ads/redexgen/X/0O;->A03(JJJJZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/0O;)Landroid/content/Context;
    .locals 0

    .line 3748
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0q:Landroid/content/Context;

    return-object p0
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/AR;Lcom/facebook/ads/redexgen/X/or;)Landroid/graphics/Point;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Av;
        }
    .end annotation

    .line 3749
    iget v1, p1, Lcom/facebook/ads/redexgen/X/or;->A0A:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0L:I

    const/4 v9, 0x0

    if-le v1, v0, :cond_a

    const/4 v11, 0x1

    .line 3750
    .local v2, "isVerticalVideo":Z
    :goto_0
    if-eqz v11, :cond_9

    iget v8, p1, Lcom/facebook/ads/redexgen/X/or;->A0A:I

    .line 3751
    .local v3, "formatLongEdgePx":I
    :goto_1
    if-eqz v11, :cond_8

    iget v7, p1, Lcom/facebook/ads/redexgen/X/or;->A0L:I

    .line 3752
    .local v5, "formatShortEdgePx":I
    :goto_2
    int-to-float v6, v7

    int-to-float v0, v8

    div-float/2addr v6, v0

    .line 3753
    .local v6, "aspectRatio":F
    sget-object v5, Lcom/facebook/ads/redexgen/X/0O;->A13:[I

    array-length v4, v5

    :goto_3
    const/4 v1, 0x0

    if-ge v9, v4, :cond_b

    aget v3, v5, v9

    .line 3754
    .local v10, "longEdgePx":I
    int-to-float v0, v3

    mul-float/2addr v0, v6

    float-to-int v2, v0

    .line 3755
    .local v11, "shortEdgePx":I
    if-le v3, v8, :cond_0

    if-gt v2, v7, :cond_1

    .line 3756
    .end local v5    # "formatShortEdgePx":I
    .end local v6    # "aspectRatio":F
    .restart local p3
    .restart local p4
    :cond_0
    return-object v1

    .line 3757
    :cond_1
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_4

    .line 3758
    if-eqz v11, :cond_3

    move v0, v2

    .line 3759
    :goto_4
    if-eqz v11, :cond_2

    .line 3760
    :goto_5
    invoke-virtual {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/AR;->A0N(II)Landroid/graphics/Point;

    move-result-object v10

    .line 3761
    .local v9, "alignedSize":Landroid/graphics/Point;
    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A01:F

    .line 3762
    .local p0, "frameRate":F
    iget v3, v10, Landroid/graphics/Point;->x:I

    iget v2, v10, Landroid/graphics/Point;->y:I

    .end local v5
    .end local v6
    .local p3, "formatShortEdgePx":I
    .local p4, "aspectRatio":F
    float-to-double v0, v0

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/AR;->A0R(IID)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3763
    return-object v10

    .line 3764
    :cond_2
    move v3, v2

    goto :goto_5

    .line 3765
    :cond_3
    move v0, v3

    goto :goto_4

    .line 3766
    .end local p3
    .end local p4
    .restart local v5    # "formatShortEdgePx":I
    .restart local v6    # "aspectRatio":F
    .end local v5    # "formatShortEdgePx":I
    .end local v6    # "aspectRatio":F
    .restart local p3
    .restart local p4
    :cond_4
    const/16 v1, 0x10

    invoke-static {v3, v1}, Lcom/facebook/ads/redexgen/X/4a;->A05(II)I

    move-result v0

    mul-int/lit8 v3, v0, 0x10

    .line 3767
    .end local v10    # "longEdgePx":I
    .local v6, "longEdgePx":I
    invoke-static {v2, v1}, Lcom/facebook/ads/redexgen/X/4a;->A05(II)I

    move-result v0

    mul-int/lit8 v2, v0, 0x10

    .line 3768
    .end local v11    # "shortEdgePx":I
    .local v9, "shortEdgePx":I
    mul-int v1, v3, v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ay;->A00()I

    move-result v0

    if-gt v1, v0, :cond_7

    .line 3769
    if-eqz v11, :cond_6

    move v1, v2

    .line 3770
    :goto_6
    if-eqz v11, :cond_5

    :goto_7
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 3771
    return-object v0

    .line 3772
    :cond_5
    move v3, v2

    goto :goto_7

    .line 3773
    :cond_6
    move v1, v3

    goto :goto_6

    .line 3774
    .end local v6    # "longEdgePx":I
    .end local v9    # "shortEdgePx":I
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 3775
    :cond_8
    iget v7, p1, Lcom/facebook/ads/redexgen/X/or;->A0A:I

    goto :goto_2

    .line 3776
    :cond_9
    iget v8, p1, Lcom/facebook/ads/redexgen/X/or;->A0L:I

    goto :goto_1

    .line 3777
    :cond_a
    const/4 v11, 0x0

    goto :goto_0

    .line 3778
    .end local v10
    .end local v11
    .end local p3
    .end local p4
    .restart local v5    # "formatShortEdgePx":I
    .restart local v6    # "longEdgePx":I
    :cond_b
    return-object v1
.end method

.method private final A08(Lcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/FA;ZI)Landroid/media/MediaFormat;
    .locals 6
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "D64704257: Adding a new param to control AI FRC"
    .end annotation

    .line 3779
    new-instance v3, Landroid/media/MediaFormat;

    invoke-direct {v3}, Landroid/media/MediaFormat;-><init>()V

    .line 3780
    .local v0, "mediaFormat":Landroid/media/MediaFormat;
    const/16 v2, 0x5b6

    const/4 v1, 0x4

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3781
    const/16 v2, 0x6db

    const/4 v1, 0x5

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0L:I

    invoke-virtual {v3, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3782
    const/16 v2, 0x51b

    const/4 v1, 0x6

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0A:I

    invoke-virtual {v3, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3783
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0X:Ljava/util/List;

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/46;->A06(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 3784
    const/16 v2, 0x506

    const/16 v1, 0xa

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A01:F

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/46;->A03(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    .line 3785
    const/16 v2, 0x60c

    const/16 v1, 0x10

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0F:I

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/46;->A04(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 3786
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0N:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/46;->A02(Landroid/media/MediaFormat;Lcom/facebook/ads/androidx/media3/common/ColorInfo;)V

    .line 3787
    const/16 v2, 0x5a7

    const/16 v1, 0x9

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p2, Lcom/facebook/ads/redexgen/X/FA;->A02:I

    invoke-virtual {v3, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3788
    const/16 v2, 0x58f

    const/16 v1, 0xa

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p2, Lcom/facebook/ads/redexgen/X/FA;->A00:I

    invoke-virtual {v3, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3789
    const/16 v2, 0x599

    const/16 v1, 0xe

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p2, Lcom/facebook/ads/redexgen/X/FA;->A01:I

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/46;->A04(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 3790
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x17

    const/4 v4, 0x0

    if-lt v1, v0, :cond_0

    .line 3791
    const/16 v2, 0x5f1

    const/16 v1, 0x8

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v1, "2RIBJj1oBKSBZdAo5SnKQdQzGU6CRjTj"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3792
    :cond_0
    if-eqz p3, :cond_1

    .line 3793
    const/16 v2, 0x495

    const/16 v1, 0x8

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3794
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A11:Lcom/facebook/ads/redexgen/X/hv;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/hY;->A03(Lcom/facebook/ads/redexgen/X/hv;Landroid/media/MediaFormat;)V

    .line 3795
    if-eqz p4, :cond_2

    .line 3796
    invoke-static {v3, p4}, Lcom/facebook/ads/redexgen/X/0O;->A0T(Landroid/media/MediaFormat;I)V

    .line 3797
    :cond_2
    return-object v3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/0O;Ljava/lang/Throwable;Lcom/facebook/ads/redexgen/X/or;I)Lcom/facebook/ads/redexgen/X/9Y;
    .locals 0

    .line 3798
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/9Z;->A1S(Ljava/lang/Throwable;Lcom/facebook/ads/redexgen/X/or;I)Lcom/facebook/ads/redexgen/X/9Y;

    move-result-object p0

    return-object p0
.end method

.method private final A0A(Lcom/facebook/ads/redexgen/X/AR;Lcom/facebook/ads/redexgen/X/or;[Lcom/facebook/ads/redexgen/X/or;)Lcom/facebook/ads/redexgen/X/FA;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Av;
        }
    .end annotation

    .line 3799
    iget v5, p2, Lcom/facebook/ads/redexgen/X/or;->A0L:I

    .line 3800
    .local v0, "maxWidth":I
    iget v4, p2, Lcom/facebook/ads/redexgen/X/or;->A0A:I

    .line 3801
    .local v1, "maxHeight":I
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/0O;->A00(Lcom/facebook/ads/redexgen/X/or;)I

    move-result v3

    .line 3802
    .local v2, "maxInputSize":I
    array-length v1, p3

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 3803
    new-instance v0, Lcom/facebook/ads/redexgen/X/FA;

    invoke-direct {v0, v5, v4, v3}, Lcom/facebook/ads/redexgen/X/FA;-><init>(III)V

    return-object v0

    .line 3804
    :cond_0
    const/4 v10, 0x0

    .line 3805
    .local v3, "haveUnknownDimensions":Z
    array-length v7, p3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_5

    aget-object v8, p3, v6

    .line 3806
    .local v8, "streamFormat":Lcom/facebook/ads/redexgen/X/or;
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/AR;->A04:Z

    invoke-static {v0, p2, v8}, Lcom/facebook/ads/redexgen/X/0O;->A0v(ZLcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/or;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3807
    iget v0, v8, Lcom/facebook/ads/redexgen/X/or;->A0L:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, v8, Lcom/facebook/ads/redexgen/X/or;->A0A:I

    if-ne v0, v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_1
    or-int/2addr v10, v0

    .line 3808
    iget v9, v8, Lcom/facebook/ads/redexgen/X/or;->A0L:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v1, "vHVCHU2tj4jzHHyhZwddXygsl3jVFph7"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 3809
    iget v0, v8, Lcom/facebook/ads/redexgen/X/or;->A0A:I

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 3810
    invoke-direct {p0, v8}, Lcom/facebook/ads/redexgen/X/0O;->A00(Lcom/facebook/ads/redexgen/X/or;)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3811
    .end local v8    # "streamFormat":Lcom/facebook/ads/redexgen/X/or;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3812
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 3813
    :cond_5
    if-eqz v10, :cond_6

    .line 3814
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x399

    const/16 v1, 0x2b

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v2, 0x6ef

    const/4 v1, 0x1

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x2aa

    const/16 v1, 0x17

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 3815
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/0O;->A07(Lcom/facebook/ads/redexgen/X/AR;Lcom/facebook/ads/redexgen/X/or;)Landroid/graphics/Point;

    move-result-object v1

    .line 3816
    .local v4, "codecMaxSize":Landroid/graphics/Point;
    if-eqz v1, :cond_6

    .line 3817
    iget v0, v1, Landroid/graphics/Point;->x:I

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 3818
    iget v0, v1, Landroid/graphics/Point;->y:I

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 3819
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    .line 3820
    invoke-static {v0, v5, v4}, Lcom/facebook/ads/redexgen/X/0O;->A02(Ljava/lang/String;II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3821
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xf6

    const/16 v1, 0x22

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 3822
    .end local v4    # "codecMaxSize":Landroid/graphics/Point;
    :cond_6
    new-instance v0, Lcom/facebook/ads/redexgen/X/FA;

    invoke-direct {v0, v5, v4, v3}, Lcom/facebook/ads/redexgen/X/FA;-><init>(III)V

    return-object v0
.end method

.method public static A0B(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/0O;->A11:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/Ar;Lcom/facebook/ads/redexgen/X/or;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Ar;",
            "Lcom/facebook/ads/redexgen/X/or;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/AR;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Av;
        }
    .end annotation

    .line 3823
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3824
    .local v0, "alternativeMediaCodecs":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ay;->A0P(Lcom/facebook/ads/redexgen/X/or;)Ljava/lang/String;

    move-result-object v1

    .line 3825
    .local v1, "alternativeMimeType":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3826
    const/4 v0, 0x0

    invoke-interface {p0, v1, v0, v0}, Lcom/facebook/ads/redexgen/X/Ar;->A7g(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v4

    .line 3827
    .local v2, "alternativeDecoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x1a

    if-lt v1, v0, :cond_0

    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    .line 3828
    const/16 v2, 0x680

    const/16 v1, 0x12

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3829
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3830
    move-object v5, v4

    .line 3831
    .end local v2    # "alternativeDecoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    :cond_0
    return-object v5
.end method

.method public static A0D(Lcom/facebook/ads/redexgen/X/Ar;Lcom/facebook/ads/redexgen/X/or;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Ar;",
            "Lcom/facebook/ads/redexgen/X/or;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/AR;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Av;
        }
    .end annotation

    .line 3832
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    .line 3833
    .local v0, "mimeType":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 3834
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3835
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v1, p2, v0}, Lcom/facebook/ads/redexgen/X/Ar;->A7g(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 3836
    .local v1, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private A0E()V
    .locals 2

    .line 3837
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0i:Z

    .line 3838
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0k:Z

    if-eqz v0, :cond_0

    .line 3839
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/14;->A1j()Lcom/facebook/ads/redexgen/X/AO;

    move-result-object v1

    .line 3840
    .local v0, "codec":Lcom/facebook/ads/redexgen/X/AO;
    if-eqz v1, :cond_0

    .line 3841
    new-instance v0, Lcom/facebook/ads/redexgen/X/la;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/la;-><init>(Lcom/facebook/ads/redexgen/X/0O;Lcom/facebook/ads/redexgen/X/AO;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A00:Lcom/facebook/ads/redexgen/X/la;

    .line 3842
    .end local v0    # "codec":Lcom/facebook/ads/redexgen/X/AO;
    :cond_0
    return-void
.end method

.method private A0F()V
    .locals 2

    .line 3843
    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0G:I

    .line 3844
    iput v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0E:I

    .line 3845
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A03:F

    .line 3846
    iput v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0F:I

    .line 3847
    return-void
.end method

.method private A0G()V
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "need for SR to release EGL context"
    .end annotation

    .line 3848
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FC;->A0G()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/i2;->A1p:Lcom/facebook/ads/redexgen/X/i2;

    .line 3849
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/i5;->A03(Lcom/facebook/ads/redexgen/X/i2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3850
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FC;->A0A()V

    const/4 v0, 0x0

    throw v0

    .line 3851
    :cond_0
    return-void
.end method

.method private A0H()V
    .locals 4

    .line 3852
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0m:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A05:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A05:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0m:I

    if-lt v1, v0, :cond_0

    .line 3853
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0I:J

    sub-long/2addr v2, v0

    .line 3854
    .local v0, "elapsedMs":J
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0u:Lcom/facebook/ads/redexgen/X/Fn;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A05:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/ads/redexgen/X/Fn;->A00(IJ)V

    .line 3855
    .end local v0    # "elapsedMs":J
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A05:I

    .line 3856
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0I:J

    .line 3857
    return-void
.end method

.method private A0I()V
    .locals 2

    .line 3858
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/14;->A1j()Lcom/facebook/ads/redexgen/X/AO;

    move-result-object v1

    .line 3859
    .local v0, "codec":Lcom/facebook/ads/redexgen/X/AO;
    if-nez v1, :cond_0

    .line 3860
    return-void

    .line 3861
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0c:Z

    if-nez v0, :cond_1

    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/AO;->A9C()I

    move-result v1

    const/16 v0, 0x1e

    if-le v1, v0, :cond_1

    .line 3862
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A0i:Lcom/facebook/ads/redexgen/X/or;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0V(Lcom/facebook/ads/redexgen/X/or;)V

    .line 3863
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0c:Z

    .line 3864
    :cond_1
    return-void
.end method

.method private A0J()V
    .locals 6

    .line 3865
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A09:I

    if-lez v0, :cond_0

    .line 3866
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 3867
    .local v0, "now":J
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0J:J

    sub-long v2, v4, v0

    .line 3868
    .local v2, "elapsedMs":J
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0u:Lcom/facebook/ads/redexgen/X/Fn;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A09:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/ads/redexgen/X/Fn;->A01(IJ)V

    .line 3869
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A09:I

    .line 3870
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/0O;->A0J:J

    .line 3871
    .end local v0    # "now":J
    .end local v2    # "elapsedMs":J
    :cond_0
    return-void
.end method

.method private A0K()V
    .locals 6

    .line 3872
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A08:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A06:I

    if-eq v0, v1, :cond_2

    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0G:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A08:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0E:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A06:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0F:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A07:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A03:F

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A01:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_2

    .line 3873
    :cond_1
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/0O;->A0u:Lcom/facebook/ads/redexgen/X/Fn;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/0O;->A08:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/0O;->A06:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/0O;->A07:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A01:F

    new-instance v0, Lcom/facebook/ads/redexgen/X/o4;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/o4;-><init>(IIIF)V

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Fn;->A07(Lcom/facebook/ads/redexgen/X/o4;)V

    .line 3874
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A08:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0G:I

    .line 3875
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A06:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0E:I

    .line 3876
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A07:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0F:I

    .line 3877
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A01:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A03:F

    .line 3878
    :cond_2
    return-void
.end method

.method private A0L()V
    .locals 2

    .line 3879
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0i:Z

    if-eqz v0, :cond_0

    .line 3880
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0u:Lcom/facebook/ads/redexgen/X/Fn;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0U:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Fn;->A0D(Ljava/lang/Object;)V

    .line 3881
    :cond_0
    return-void
.end method

.method private A0M()V
    .locals 6

    .line 3882
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0G:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0E:I

    if-eq v0, v1, :cond_1

    .line 3883
    :cond_0
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/0O;->A0u:Lcom/facebook/ads/redexgen/X/Fn;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/0O;->A0G:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/0O;->A0E:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/0O;->A0F:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A03:F

    new-instance v0, Lcom/facebook/ads/redexgen/X/o4;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/o4;-><init>(IIIF)V

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Fn;->A07(Lcom/facebook/ads/redexgen/X/o4;)V

    .line 3884
    :cond_1
    return-void
.end method

.method private A0N()V
    .locals 5

    .line 3885
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/0O;->A0p:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 3886
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0p:J

    add-long/2addr v2, v0

    .line 3887
    :goto_0
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/0O;->A0M:J

    .line 3888
    return-void

    .line 3889
    :cond_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0
.end method

.method private A0O()V
    .locals 3
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "D36797879: Adding implementation for calculating avg render time"
    .end annotation

    .line 3890
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/14;->A0j:Lcom/facebook/ads/redexgen/X/5g;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/14;->A0h:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/5g;->A03(J)V

    .line 3891
    return-void
.end method

.method public static A0P()V
    .locals 1

    const/16 v0, 0x6f0

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/0O;->A11:[B

    return-void

    :array_0
    .array-data 1
        0x60t
        0x65t
        0x5ft
        0x60t
        0x60t
        0x66t
        0x60t
        0x62t
        0x5ct
        0x62t
        0x5ct
        0x5ft
        -0x40t
        -0x50t
        -0x51t
        -0x54t
        -0x4at
        -0x51t
        -0x3bt
        -0x4at
        -0x5at
        -0x5bt
        -0x5et
        -0x54t
        -0x5bt
        -0x3ft
        -0x6at
        -0x7at
        -0x75t
        -0x7bt
        -0x7at
        0x4ft
        0x40t
        0x3et
        0x3ft
        0x44t
        0x6ft
        0x42t
        0x3et
        0x58t
        0x4et
        0x47t
        0x47t
        0x47t
        0x44t
        0x78t
        -0x71t
        -0x7bt
        0x7et
        0x7et
        0x7et
        -0x42t
        -0x46t
        -0x3dt
        -0x3ft
        -0x7at
        0x7ct
        0x75t
        0x76t
        0x75t
        -0x5at
        0x79t
        0x7dt
        0x69t
        0x5ft
        0x58t
        0x5at
        0x58t
        -0x77t
        0x5ct
        0x60t
        -0x4dt
        -0x48t
        -0x3at
        -0x4dt
        0x5dt
        0x62t
        0x70t
        0x6at
        -0x7bt
        -0x69t
        -0x67t
        -0x69t
        -0x5dt
        -0x64t
        0x74t
        0x74t
        -0x7bt
        -0x78t
        0x63t
        0x75t
        0x77t
        0x75t
        -0x7ft
        0x7at
        0x52t
        0x52t
        0x63t
        0x66t
        0x63t
        0x5ft
        0x71t
        0x73t
        0x71t
        0x7dt
        0x76t
        0x4et
        0x4et
        0x5ft
        0x62t
        0x61t
        0x4et
        0x60t
        0x62t
        0x60t
        0x6ct
        0x65t
        0x3dt
        0x3dt
        0x4et
        0x51t
        0x6ct
        0x3ft
        -0x79t
        -0x4ct
        -0x56t
        -0x48t
        -0x4bt
        -0x4dt
        -0x59t
        -0x42t
        0x66t
        -0x79t
        0x78t
        0x7ct
        -0x77t
        0x7at
        -0x72t
        0x4et
        0x7et
        -0x7et
        0x6et
        0x5dt
        0x7ct
        -0x7ct
        0x72t
        0x7ft
        0x5at
        -0x47t
        -0x15t
        -0x13t
        -0x15t
        -0x29t
        -0x2et
        -0x46t
        -0x53t
        -0x58t
        -0x58t
        -0x3dt
        -0x3ct
        -0x4ct
        -0x18t
        -0x1bt
        -0x2ct
        -0x2et
        -0x3ft
        -0x1et
        -0x19t
        -0x28t
        -0x2et
        -0x5bt
        -0x41t
        -0x37t
        -0x42t
        -0x40t
        -0x38t
        -0x56t
        -0x52t
        -0x2bt
        -0x43t
        -0x33t
        -0x44t
        -0x2ft
        -0x3ct
        -0x44t
        -0x65t
        -0x51t
        -0x3at
        -0x65t
        -0x53t
        -0x55t
        -0x54t
        -0x50t
        0x7ft
        -0x71t
        0x7et
        -0x6dt
        -0x7at
        0x7et
        -0x64t
        0x7et
        -0x6ft
        -0x6dt
        0x6ft
        -0x6ct
        -0x5ct
        -0x6dt
        -0x58t
        -0x65t
        -0x6dt
        -0x4ft
        -0x6dt
        -0x5at
        -0x58t
        -0x7bt
        -0x4ft
        -0x7at
        -0x63t
        -0x59t
        -0x6bt
        -0x7bt
        -0x6et
        0x7at
        0x78t
        0x79t
        0x78t
        -0x5ft
        -0x75t
        0x72t
        0x74t
        0x76t
        -0x7dt
        0x7bt
        0x64t
        0x69t
        0x63t
        0x6ct
        0x6at
        0x77t
        -0x80t
        0x5ft
        0x5at
        -0x7at
        0x70t
        0x57t
        0x57t
        0x55t
        -0x7ft
        0x76t
        0x77t
        0x75t
        0x32t
        0x7ft
        0x73t
        -0x76t
        0x32t
        -0x7ct
        0x77t
        -0x7bt
        -0x7ft
        0x7et
        -0x79t
        -0x7at
        0x7bt
        -0x7ft
        -0x80t
        0x32t
        0x73t
        0x76t
        0x7ct
        -0x79t
        -0x7bt
        -0x7at
        0x77t
        0x76t
        0x32t
        -0x7at
        -0x7ft
        0x4ct
        0x32t
        -0x47t
        -0x1bt
        -0x1dt
        -0x21t
        -0x1bt
        -0x37t
        -0x59t
        -0x7et
        0x72t
        0x73t
        0x71t
        0x70t
        -0x67t
        -0x60t
        -0x57t
        -0x65t
        -0x6bt
        -0x4dt
        -0x6bt
        -0x79t
        -0x4dt
        -0x5ct
        -0x3at
        -0x3dt
        -0x3bt
        -0x34t
        -0x2bt
        -0x39t
        -0x3ft
        -0x21t
        -0x32t
        -0x11t
        -0xct
        -0x1bt
        -0x36t
        -0x2ft
        -0x26t
        -0x34t
        -0x3at
        -0x1ct
        -0x2bt
        -0x9t
        -0x12t
        -0xet
        0x4dt
        0x54t
        0x5dt
        0x4ft
        0x49t
        0x67t
        0x5at
        0x69t
        -0x7ft
        0x67t
        0x60t
        -0x5dt
        -0x2ct
        -0x3dt
        -0x30t
        -0x4ft
        -0x2et
        -0x41t
        -0x30t
        -0x43t
        -0x4ft
        -0x3et
        -0x51t
        -0x53t
        -0x53t
        -0x53t
        -0x4ct
        -0x5ft
        -0x61t
        -0x61t
        -0x5ft
        0x6ft
        0x5ct
        0x5at
        0x5at
        0x5ft
        0x5at
        0x47t
        0x46t
        0x45t
        0x45t
        0x4et
        0x3bt
        0x3at
        0x39t
        0x3bt
        -0x6at
        -0x7dt
        -0x7et
        -0x7ft
        -0x7bt
        0x54t
        0x41t
        0x41t
        0x3ft
        0x3ft
        -0x6bt
        -0x50t
        -0x45t
        -0x3et
        -0x4ct
        -0x6et
        -0x49t
        -0x4ct
        -0x4et
        -0x46t
        0x6ft
        -0x56t
        -0x45t
        -0x4ct
        -0x4at
        -0x50t
        -0x4et
        -0x38t
        -0x6bt
        -0x3ft
        -0x50t
        -0x44t
        -0x4ct
        -0x5et
        -0x48t
        -0x37t
        -0x4ct
        0x7bt
        0x6ft
        0x5et
        0x60t
        0x66t
        0x65t
        0x5ct
        0x5ct
        0x76t
        0x5et
        0x59t
        0x63t
        0x4et
        0x4at
        0x4dt
        0x47t
        -0x62t
        -0x60t
        -0x5at
        -0x5bt
        -0x64t
        -0x64t
        -0x4at
        -0x56t
        -0x52t
        -0x52t
        -0x78t
        -0x73t
        -0x79t
        -0x70t
        -0x5bt
        -0x59t
        -0x53t
        -0x54t
        -0x5dt
        -0x5dt
        -0x43t
        -0x4ft
        -0x4bt
        -0x4bt
        -0x71t
        -0x6ct
        -0x70t
        -0x6bt
        0x65t
        0x67t
        0x6dt
        0x6ct
        0x63t
        0x63t
        0x7dt
        0x71t
        0x75t
        0x75t
        0x4ft
        0x54t
        0x51t
        0x4ft
        -0x71t
        -0x6ft
        -0x69t
        -0x6at
        -0x73t
        -0x73t
        -0x59t
        -0x61t
        -0x76t
        -0x6ct
        0x7dt
        0x7ft
        0x78t
        -0x80t
        0x66t
        0x68t
        0x6et
        0x6dt
        0x64t
        0x64t
        0x7et
        0x76t
        0x61t
        0x6bt
        0x56t
        0x52t
        0x55t
        0x54t
        -0x76t
        -0x74t
        -0x6et
        -0x6ft
        -0x78t
        -0x78t
        -0x5et
        -0x66t
        -0x7bt
        -0x71t
        0x7at
        0x78t
        0x74t
        0x7ct
        -0x69t
        -0x47t
        -0x61t
        -0x62t
        -0x6bt
        -0x6bt
        -0x51t
        -0x6dt
        -0x6et
        -0x64t
        -0x79t
        -0x7bt
        -0x7ft
        -0x7dt
        -0x68t
        -0x46t
        -0x60t
        -0x61t
        -0x6at
        -0x6at
        -0x50t
        -0x68t
        -0x6dt
        -0x63t
        -0x78t
        -0x7ct
        -0x7et
        -0x76t
        0x63t
        0x70t
        0x5ct
        0x72t
        0x60t
        0x64t
        0x3bt
        0x69t
        0x73t
        0x6ft
        0x48t
        0x67t
        0x4dt
        0x54t
        0x72t
        -0x7ft
        0x6ct
        0x76t
        0x78t
        0x57t
        0x72t
        -0x7dt
        -0x6et
        0x7et
        0x7ct
        -0x78t
        0x68t
        -0x7dt
        0x51t
        0x60t
        0x4et
        0x56t
        0x55t
        -0x61t
        -0x52t
        -0x53t
        -0x5bt
        -0x56t
        -0x7ct
        -0x61t
        -0x6dt
        -0x5et
        -0x5et
        -0x74t
        -0x62t
        0x78t
        -0x6dt
        -0x59t
        -0x34t
        -0x3ct
        -0x39t
        -0x34t
        -0x39t
        -0x2at
        -0x75t
        -0x4at
        -0x6dt
        -0x6bt
        -0x70t
        0x5dt
        0x5at
        0x6dt
        -0x51t
        -0x48t
        -0x4dt
        -0x6et
        -0x4ft
        -0x69t
        -0x6at
        -0x46t
        -0x5ct
        -0x61t
        -0x30t
        -0x5dt
        -0x61t
        0x67t
        0x62t
        0x48t
        0x66t
        0x4ft
        0x4et
        0x4bt
        0x7at
        0x75t
        0x5bt
        0x7bt
        0x60t
        0x63t
        0x5et
        0x63t
        0x6at
        0x44t
        0x4ct
        0x47t
        0x48t
        0x4et
        -0x45t
        -0x2ct
        -0x23t
        -0x22t
        -0x1bt
        -0x22t
        -0x71t
        -0x50t
        -0x5ft
        -0x61t
        -0x60t
        -0x5bt
        -0x2ft
        -0x5et
        -0x61t
        0x7dt
        -0x6at
        -0x61t
        -0x60t
        -0x59t
        -0x60t
        0x51t
        0x7ct
        0x62t
        0x61t
        -0x6et
        0x65t
        0x61t
        -0x38t
        -0x1ft
        -0x16t
        -0x15t
        -0xet
        -0x15t
        -0x64t
        -0x39t
        -0x4ct
        0x75t
        0x5dt
        -0x75t
        0x76t
        0x6et
        0x72t
        -0x7dt
        0x7et
        -0x78t
        0x76t
        0x5et
        0x67t
        0x72t
        0x50t
        0x54t
        0x6ct
        0x6bt
        0x70t
        0x68t
        0x4at
        0x76t
        0x6bt
        0x6ct
        0x6at
        0x5dt
        0x70t
        0x6bt
        0x6ct
        0x76t
        0x59t
        0x6ct
        0x75t
        0x6bt
        0x6ct
        0x79t
        0x6ct
        0x79t
        -0x5at
        -0x38t
        -0x33t
        -0x38t
        -0x62t
        -0x75t
        -0x7ft
        -0x73t
        -0x60t
        -0x7at
        -0x5bt
        -0x53t
        -0x62t
        -0x7et
        0x7dt
        -0x61t
        -0x5ct
        -0x61t
        0x77t
        0x63t
        -0x53t
        -0x4bt
        -0x58t
        -0x5dt
        -0x58t
        -0x60t
        0x55t
        0x5ft
        0x3ct
        0x3bt
        0x38t
        0x51t
        -0x63t
        -0x59t
        -0x7ct
        -0x7at
        -0x7et
        -0x67t
        -0x6dt
        -0x6ft
        -0x64t
        0x72t
        -0x55t
        -0x4dt
        -0x4dt
        -0x55t
        -0x50t
        -0x57t
        -0x55t
        -0x36t
        -0x3ft
        -0x54t
        -0x38t
        -0x2ft
        -0x31t
        -0x6ft
        -0x50t
        -0x33t
        -0x4dt
        -0x4bt
        -0x52t
        0x7et
        0x66t
        0x63t
        0x5bt
        0x4dt
        0x3dt
        0x38t
        0x41t
        0x42t
        0x3bt
        0x58t
        0x76t
        0x6dt
        0x74t
        0x5bt
        0x58t
        0x5et
        -0x58t
        -0x61t
        -0x5at
        -0x72t
        -0x77t
        -0x78t
        -0x7dt
        0x7at
        -0x7ft
        0x69t
        0x64t
        0x64t
        -0x4ct
        -0x50t
        -0x57t
        0x79t
        0x7bt
        0x78t
        0x60t
        0x7ct
        -0x47t
        -0x2ft
        -0x36t
        -0x29t
        -0x23t
        -0x28t
        -0x2at
        -0x61t
        -0x6bt
        -0x52t
        -0x43t
        -0x56t
        -0x4ft
        0x65t
        -0x5bt
        -0x42t
        -0x33t
        -0x42t
        -0x77t
        -0x7et
        -0x74t
        -0x4ct
        -0x78t
        -0x64t
        -0x51t
        -0x38t
        -0x29t
        -0x38t
        -0x6ct
        -0x74t
        -0x70t
        -0x71t
        -0x42t
        -0x6dt
        -0x5at
        0x7bt
        0x5dt
        0x5ft
        0x5at
        -0x45t
        -0x62t
        -0x64t
        -0x60t
        -0x66t
        -0x67t
        0x7ct
        0x7at
        0x7ft
        0x6bt
        0x4et
        0x4dt
        0x4bt
        0x4at
        -0x7et
        0x66t
        0x7ct
        0x78t
        0x5ct
        0x61t
        -0x7dt
        0x70t
        -0x76t
        -0x80t
        -0x7bt
        -0x74t
        0x65t
        -0x32t
        -0x1ft
        -0x20t
        -0x17t
        -0x1bt
        -0x64t
        -0x50t
        -0x2ct
        -0x4ft
        -0x3ct
        -0x3dt
        -0x34t
        -0x38t
        0x7ft
        -0x53t
        -0x32t
        -0x2dt
        -0x3ct
        0x7ft
        -0x6ft
        0x71t
        -0x7ct
        -0x7dt
        -0x74t
        -0x78t
        0x3ft
        0x6dt
        -0x72t
        -0x6dt
        -0x7ct
        0x3ft
        0x52t
        -0x69t
        -0x56t
        -0x4dt
        -0x57t
        -0x56t
        -0x49t
        0x65t
        -0x4ct
        -0x46t
        -0x47t
        -0x4bt
        -0x46t
        -0x47t
        0x65t
        -0x55t
        -0x5at
        -0x52t
        -0x4ft
        -0x56t
        -0x57t
        -0x4et
        -0x3bt
        -0x2dt
        -0x31t
        -0x34t
        -0x2bt
        -0x2ct
        -0x37t
        -0x31t
        -0x32t
        -0x2dt
        -0x80t
        -0x2bt
        -0x32t
        -0x35t
        -0x32t
        -0x31t
        -0x29t
        -0x32t
        -0x72t
        -0x80t
        -0x5dt
        -0x31t
        -0x3ct
        -0x3bt
        -0x3dt
        -0x80t
        -0x33t
        -0x3ft
        -0x28t
        -0x80t
        -0x2et
        -0x3bt
        -0x2dt
        -0x31t
        -0x34t
        -0x2bt
        -0x2ct
        -0x37t
        -0x31t
        -0x32t
        -0x66t
        -0x80t
        -0x77t
        -0x7dt
        0x63t
        0x7dt
        0x6ft
        0x69t
        0x6bt
        0x66t
        -0x5at
        -0x60t
        -0x80t
        -0x63t
        -0x7bt
        -0x7dt
        -0x7dt
        -0x66t
        -0x58t
        -0x53t
        -0x59t
        -0x79t
        -0x5ct
        -0x74t
        -0x76t
        -0x76t
        -0x59t
        -0x76t
        -0x7ct
        0x64t
        -0x7bt
        0x70t
        0x68t
        0x67t
        -0x77t
        0x6bt
        0x7et
        -0x80t
        0x72t
        0x6ct
        0x7dt
        0x4bt
        0x7et
        0x64t
        -0x3et
        -0x3bt
        -0x41t
        -0x64t
        -0x4dt
        -0x3dt
        -0x3bt
        -0x60t
        -0x5ct
        0x76t
        -0x71t
        -0x7ct
        -0x69t
        -0x78t
        -0x7et
        0x73t
        -0x6bt
        -0x6et
        -0x2at
        -0xet
        -0xft
        -0x4t
        -0x5dt
        -0x29t
        -0x1ct
        -0x1bt
        -0x11t
        -0x18t
        -0x9t
        -0x5dt
        -0x2at
        0x7et
        0x6ct
        0x5dt
        0x57t
        0x61t
        0x5dt
        0x5at
        0x70t
        0x7et
        0x6ct
        0x5dt
        0x57t
        0x61t
        0x5dt
        0x5at
        -0x7et
        -0x48t
        -0x5at
        -0x69t
        -0x6ft
        -0x64t
        -0x67t
        -0x6ct
        -0x56t
        -0x74t
        0x7at
        0x6bt
        0x65t
        0x70t
        0x6dt
        0x68t
        -0x7bt
        -0x4dt
        -0x32t
        -0x32t
        0x7ft
        -0x34t
        -0x40t
        -0x33t
        -0x28t
        0x7ft
        -0x2et
        -0x2dt
        -0x2ft
        -0x3ct
        -0x40t
        -0x34t
        0x7ft
        -0x3et
        -0x39t
        -0x40t
        -0x33t
        -0x3at
        -0x3ct
        -0x2et
        -0x75t
        0x7ft
        -0x2et
        -0x32t
        0x7ft
        -0x3dt
        -0x2ft
        -0x32t
        -0x31t
        -0x31t
        -0x38t
        -0x33t
        -0x3at
        0x7ft
        -0x32t
        -0x3bt
        -0x3bt
        -0x2et
        -0x3ct
        -0x2dt
        -0x67t
        0x7ft
        -0x59t
        -0x7et
        0x6bt
        0x47t
        0x48t
        0x5ct
        0x57t
        0x70t
        0x4ft
        0x75t
        0x72t
        0x57t
        0x57t
        0x4ft
        -0x49t
        -0x6et
        -0x42t
        -0x59t
        -0x56t
        0x61t
        0x4et
        0x3bt
        0x61t
        -0x26t
        -0x2at
        -0x4dt
        -0x48t
        -0x48t
        -0x4bt
        -0x52t
        -0x7bt
        -0x7at
        -0x4dt
        -0x5ct
        -0x5at
        -0x5dt
        -0x5at
        -0x7ct
        0x7ct
        -0x5ct
        -0x53t
        0x70t
        -0x55t
        -0x65t
        -0x51t
        -0x62t
        -0x5dt
        -0x57t
        0x67t
        -0x53t
        -0x61t
        -0x53t
        -0x53t
        -0x5dt
        -0x57t
        -0x58t
        0x67t
        -0x5dt
        -0x62t
        0x78t
        -0x74t
        -0x75t
        -0x7at
        0x44t
        0x7dt
        -0x77t
        0x7at
        -0x5ct
        0x73t
        0x6ft
        -0x5et
        -0x51t
        -0x5bt
        -0x4dt
        -0x50t
        -0x56t
        -0x5bt
        0x6ft
        -0x5et
        -0x49t
        0x72t
        0x6et
        -0x5bt
        -0x5et
        -0x49t
        0x72t
        -0x5bt
        0x6ft
        -0x5bt
        -0x5at
        -0x5ct
        -0x50t
        -0x5bt
        -0x5at
        -0x4dt
        -0x18t
        -0x9t
        -0xct
        -0xbt
        -0x4et
        -0x19t
        -0xct
        -0x7t
        -0x7t
        -0xct
        -0xet
        0x6ct
        0x7bt
        0x78t
        0x79t
        0x36t
        0x75t
        0x6et
        0x6ft
        0x7dt
        -0x30t
        -0x21t
        -0x24t
        -0x23t
        -0x66t
        -0x21t
        -0x2at
        -0x2ct
        -0x2bt
        -0x1ft
        -0x5ft
        -0x50t
        -0x53t
        -0x52t
        0x6bt
        -0x4et
        -0x53t
        -0x52t
        -0x1ct
        -0x9t
        -0x4et
        0x6et
        -0x7ft
        0x3et
        -0x33t
        -0x36t
        -0x29t
        -0x30t
        -0x36t
        -0x2bt
        -0x34t
        -0x33t
        -0x36t
        -0x17t
        -0x9t
        -0xct
        -0xbt
        -0x25t
        -0x12t
        -0x17t
        -0x16t
        -0xct
        -0x39t
        -0x6t
        -0x15t
        -0x15t
        -0x16t
        -0x9t
        0x72t
        0x78t
        0x7bt
        -0x3ct
        -0x33t
        -0x2ft
        -0x2et
        -0x3dt
        -0x30t
        -0x26t
        -0x1at
        -0x2bt
        -0x1ft
        -0x27t
        -0x5ft
        -0x1at
        -0x2bt
        -0x18t
        -0x27t
        -0x35t
        -0x26t
        -0x34t
        -0x26t
        -0x37t
        -0x2ct
        -0x35t
        -0x38t
        -0x38t
        -0x35t
        -0x30t
        -0x48t
        -0x4bt
        -0x47t
        -0x49t
        -0x48t
        -0x3ct
        -0x41t
        -0x35t
        -0x46t
        -0x4at
        -0x44t
        -0x74t
        -0x73t
        -0x3ct
        -0x3dt
        -0x4at
        -0x45t
        -0x35t
        -0x34t
        -0x3dt
        -0x51t
        -0x42t
        -0x78t
        -0x6dt
        -0x74t
        0x74t
        -0x71t
        -0x5et
        0x72t
        0x69t
        0x6ct
        0x6at
        0x73t
        0x6ct
        0x6bt
        0x76t
        0x76t
        0x42t
        0x41t
        0x3dt
        0x3ft
        0x69t
        0x43t
        0x42t
        0x3at
        0x40t
        -0x2et
        -0x25t
        -0x2et
        -0x24t
        -0x61t
        -0x67t
        -0x34t
        -0x29t
        -0x38t
        -0x31t
        -0x3et
        -0x4at
        -0x69t
        -0x6ct
        -0x68t
        0x60t
        -0x5at
        -0x66t
        -0x5et
        -0x6dt
        -0x69t
        -0x64t
        -0x5ft
        -0x5ft
        -0x69t
        -0x56t
        -0x65t
        -0x65t
        0x64t
        0x63t
        0x65t
        0x5ft
        0x78t
        0x71t
        0x6bt
        -0x7ct
        0x42t
        -0x41t
        -0x3et
        -0x36t
        -0x80t
        -0x41t
        -0x4ct
        -0x39t
        -0x48t
        -0x3ft
        -0x4at
        -0x34t
        -0x38t
        -0x73t
        0x7bt
        -0x37t
        -0x36t
        -0x31t
        -0x40t
        0x7dt
        0x71t
        0x7et
        0x7et
        0x79t
        0x7et
        0x77t
        -0x11t
        -0x1dt
        -0xct
        -0x15t
        -0x10t
        -0xft
        -0x1ft
        -0x18t
        -0x73t
        -0x7ft
        -0x68t
        0x4dt
        -0x78t
        -0x7bt
        -0x77t
        -0x79t
        -0x78t
        -0x6ct
        -0x1bt
        -0x27t
        -0x10t
        -0x5bt
        -0x1ft
        -0x1at
        -0x18t
        -0x13t
        -0x14t
        -0x5bt
        -0x15t
        -0x1ft
        -0xet
        -0x23t
        0x75t
        0x69t
        -0x80t
        0x35t
        0x7ft
        0x71t
        0x6ct
        0x7ct
        0x70t
        0x7ct
        0x77t
        -0x4bt
        -0x4ft
        -0x54t
        -0x49t
        -0x39t
        -0x3dt
        -0x39t
        -0x41t
        -0x66t
        -0x73t
        -0x67t
        -0x73t
        -0x60t
        -0x6ct
        -0x6et
        -0x73t
        -0x79t
        -0x71t
        -0x70t
        -0x7bt
        -0x67t
        -0x69t
        -0x7dt
        -0x76t
        -0x59t
        0x69t
        0x68t
        0x69t
        -0x71t
        -0x80t
        -0x73t
        -0x7ct
        -0x75t
        -0x75t
        0x7et
        -0x7dt
        -0x4at
        -0x59t
        -0x4ct
        -0x55t
        -0x4et
        -0x4et
        -0x5bt
        -0x56t
        -0x4et
        -0x12t
        -0x21t
        -0x14t
        -0x1dt
        -0x16t
        -0x16t
        -0x23t
        -0x1et
        -0xft
        -0x5bt
        -0x6at
        -0x5dt
        -0x66t
        -0x5ft
        -0x5ft
        -0x6ct
        -0x67t
        -0x57t
        -0x18t
        -0x16t
        -0x1ft
        -0x19t
        -0x16t
        -0x1ft
        -0x14t
        -0xft
        -0x54t
        -0x61t
        -0x5at
        -0x61t
        -0x65t
        -0x53t
        -0x61t
        -0x77t
        -0x51t
        -0x52t
        -0x56t
        -0x51t
        -0x52t
        0x7ct
        -0x51t
        -0x60t
        -0x60t
        -0x61t
        -0x54t
        -0x80t
        0x7dt
        -0x7et
        0x6ft
        -0x7et
        0x77t
        0x7dt
        0x7ct
        0x3bt
        0x72t
        0x73t
        0x75t
        -0x80t
        0x73t
        0x73t
        -0x7ft
        -0x6bt
        0x5bt
        0x52t
        0x57t
        -0x66t
        0x52t
        0x53t
        0x5at
        -0x3at
        -0x4ct
        -0x3ft
        -0x39t
        -0x3et
        -0x3ft
        -0x44t
        -0x69t
        -0x71t
        -0x73t
        -0x6ct
        0x7at
        -0x73t
        -0x78t
        -0x77t
        -0x6dt
        0x66t
        -0x67t
        -0x76t
        -0x76t
        -0x77t
        -0x6at
        -0xet
        -0x21t
        -0x19t
        -0x1et
        -0x13t
        -0x23t
        -0x10t
        -0x13t
        -0xbt
        -0x77t
        0x78t
        -0x7ft
        0x74t
        0x7at
        -0x76t
        -0x54t
        -0x53t
        -0x5at
        -0x5at
        -0x63t
        -0x5ct
        -0x63t
        -0x64t
        0x65t
        -0x58t
        -0x5ct
        -0x67t
        -0x4ft
        -0x66t
        -0x67t
        -0x65t
        -0x5dt
        -0x5at
        -0x6bt
        -0x5et
        -0x62t
        -0x6bt
        -0x6bt
        -0x71t
        0x7dt
        0x65t
        -0x36t
        -0x43t
        -0x48t
        -0x47t
        -0x3dt
        -0x7dt
        -0x79t
        -0x45t
        -0x3ct
        -0x3ct
        -0x56t
        -0x63t
        -0x68t
        -0x67t
        -0x5dt
        0x63t
        -0x6bt
        -0x56t
        0x64t
        0x65t
        -0x28t
        -0x35t
        -0x3at
        -0x39t
        -0x2ft
        -0x6ft
        -0x3dt
        -0x28t
        -0x3bt
        -0x7ct
        0x77t
        0x72t
        0x73t
        0x7dt
        0x3dt
        0x72t
        0x7dt
        0x7at
        0x70t
        -0x79t
        0x3bt
        -0x7ct
        0x77t
        -0x7ft
        0x77t
        0x7dt
        0x7ct
        -0x25t
        -0x32t
        -0x37t
        -0x36t
        -0x2ct
        -0x6ct
        -0x33t
        -0x36t
        -0x25t
        -0x38t
        -0x6dt
        -0x7at
        -0x7ft
        -0x7et
        -0x74t
        0x4ct
        -0x76t
        -0x73t
        0x51t
        -0x6dt
        0x4at
        -0x7et
        -0x70t
        -0x21t
        -0x2et
        -0x33t
        -0x32t
        -0x28t
        -0x68t
        -0x1ft
        -0x6at
        -0x21t
        -0x29t
        -0x33t
        -0x69t
        -0x28t
        -0x29t
        -0x65t
        -0x69t
        -0x21t
        -0x27t
        -0x5ft
        -0x16t
        -0x23t
        -0x28t
        -0x27t
        -0x1dt
        -0x5dt
        -0x14t
        -0x5ft
        -0x16t
        -0x1et
        -0x28t
        -0x5et
        -0x1dt
        -0x1et
        -0x5at
        -0x5et
        -0x16t
        -0x1ct
        -0x53t
        -0x4ct
        -0x62t
        -0x4ft
        -0x50t
        -0x54t
        -0x55t
        -0x2at
        -0x39t
        -0x28t
        -0x2ft
        -0x3ct
        -0x3dt
        -0x33t
        -0x41t
        -0x46t
        -0x36t
        -0x42t
        -0x58t
        -0x60t
        -0x60t
        -0x6bt
        -0x5ct
        -0x70t
        -0x69t
        -0x59t
        -0x61t
        -0x61t
        -0x6ct
        -0x5dt
        -0x71t
        -0x6at
        -0x62t
        -0x2dt
    .end array-data
.end method

.method private final A0Q(I)V
    .locals 3

    .line 3892
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/14;->A0j:Lcom/facebook/ads/redexgen/X/5g;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/5g;->A04:I

    add-int/2addr v0, p1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/5g;->A04:I

    .line 3893
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A09:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A09:I

    .line 3894
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A05:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A05:I

    .line 3895
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/14;->A0j:Lcom/facebook/ads/redexgen/X/5g;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A05:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A0j:Lcom/facebook/ads/redexgen/X/5g;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/5g;->A07:I

    .line 3896
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/5g;->A07:I

    .line 3897
    iget v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A09:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0l:I

    if-lt v1, v0, :cond_0

    .line 3898
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0O;->A0J()V

    .line 3899
    :cond_0
    return-void
.end method

.method private final A0R(JJF)V
    .locals 9

    .line 3900
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/1w;->A01(J)J

    move-result-wide v0

    long-to-int v6, v0

    .line 3901
    .local v1, "positionMs":I
    invoke-static {p3, p4}, Lcom/facebook/ads/redexgen/X/1w;->A01(J)J

    move-result-wide v0

    long-to-int v5, v0

    .line 3902
    .local v0, "presentationGapMs":I
    const/16 v3, 0x3e8

    if-le v5, v3, :cond_1

    const/16 v0, 0x2710

    if-ge v5, v0, :cond_1

    add-int v2, v6, v5

    iget v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0A:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0B:I

    add-int/2addr v1, v0

    add-int/2addr v1, v3

    if-le v2, v1, :cond_1

    .line 3903
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0A:I

    const-wide v7, 0x408f400000000000L    # 1000.0

    if-le v6, v0, :cond_2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0A:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0B:I

    add-int/2addr v1, v0

    if-ge v6, v1, :cond_2

    .line 3904
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/14;->A0j:Lcom/facebook/ads/redexgen/X/5g;

    iget v3, v4, Lcom/facebook/ads/redexgen/X/5g;->A0E:I

    add-int v2, v6, v5

    iget v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0A:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0B:I

    add-int/2addr v1, v0

    sub-int/2addr v2, v1

    int-to-float v0, v2

    mul-float/2addr v0, p5

    float-to-double v1, v0

    div-double/2addr v1, v7

    double-to-int v0, v1

    add-int/2addr v3, v0

    iput v3, v4, Lcom/facebook/ads/redexgen/X/5g;->A0E:I

    .line 3905
    :cond_0
    :goto_0
    iput v6, p0, Lcom/facebook/ads/redexgen/X/0O;->A0A:I

    .line 3906
    iput v5, p0, Lcom/facebook/ads/redexgen/X/0O;->A0B:I

    .line 3907
    :cond_1
    return-void

    .line 3908
    :cond_2
    iget v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0A:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0B:I

    add-int/2addr v1, v0

    if-le v6, v1, :cond_0

    .line 3909
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/14;->A0j:Lcom/facebook/ads/redexgen/X/5g;

    iget v3, v4, Lcom/facebook/ads/redexgen/X/5g;->A0E:I

    int-to-float v0, v5

    mul-float/2addr v0, p5

    float-to-double v1, v0

    div-double/2addr v1, v7

    double-to-int v0, v1

    add-int/2addr v3, v0

    iput v3, v4, Lcom/facebook/ads/redexgen/X/5g;->A0E:I

    goto :goto_0
.end method

.method private A0S(JJLcom/facebook/ads/redexgen/X/or;Landroid/media/MediaFormat;)V
    .locals 7

    .line 3910
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0X:Lcom/facebook/ads/redexgen/X/FQ;

    if-eqz v0, :cond_0

    .line 3911
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0X:Lcom/facebook/ads/redexgen/X/FQ;

    move-object v5, p5

    move-wide v3, p3

    move-object v6, p6

    move-wide v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/FQ;->AFi(JJLcom/facebook/ads/redexgen/X/or;Landroid/media/MediaFormat;)V

    .line 3912
    :cond_0
    return-void
.end method

.method public static A0T(Landroid/media/MediaFormat;I)V
    .locals 3

    .line 3913
    const/16 v2, 0x649

    const/16 v1, 0x11

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    .line 3914
    const/16 v2, 0x485

    const/16 v1, 0x10

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3915
    return-void
.end method

.method private A0U(Landroid/view/Surface;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 3916
    if-nez p1, :cond_0

    .line 3917
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0T:Landroid/view/Surface;

    if-eqz v0, :cond_3

    .line 3918
    iget-object p1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0T:Landroid/view/Surface;

    .line 3919
    .end local v0
    :cond_0
    :goto_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/i2;->A0W:Lcom/facebook/ads/redexgen/X/i2;

    .line 3920
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/i5;->A03(Lcom/facebook/ads/redexgen/X/i2;)Z

    move-result v7

    .line 3921
    .local v0, "shouldReInitCodecUponSurfaceSetFailure":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0U:Landroid/view/Surface;

    if-eq v0, p1, :cond_6

    .line 3922
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0U:Landroid/view/Surface;

    .line 3923
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0Q:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_5

    .line 3924
    sget-object v2, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v1, "flDNbofxs3CTffCwMDp3s46Nt2jaxTe4"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9Z;->A92()I

    move-result v2

    .line 3925
    .local v1, "state":I
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0f:Z

    const/4 v3, 0x0

    const/4 v0, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0O;->AAV()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v6, 0x1

    .line 3926
    .local v2, "shouldSetJoiningDeadline":Z
    :goto_1
    const/4 v5, 0x2

    if-eq v2, v0, :cond_1

    if-ne v2, v5, :cond_9

    .line 3927
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/14;->A1j()Lcom/facebook/ads/redexgen/X/AO;

    move-result-object v4

    .line 3928
    .local v6, "codec":Lcom/facebook/ads/redexgen/X/AO;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FC;->A0G()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3929
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_4

    if-eqz v4, :cond_4

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0b:Z

    if-nez v0, :cond_4

    .line 3930
    if-eqz v7, :cond_8

    goto :goto_2

    .line 3931
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 3932
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/14;->A1k()Lcom/facebook/ads/redexgen/X/AR;

    move-result-object v2

    .line 3933
    .local v0, "codecInfo":Lcom/facebook/ads/redexgen/X/AR;
    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/0O;->A0r(Lcom/facebook/ads/redexgen/X/AR;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3934
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0q:Landroid/content/Context;

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/AR;->A06:Z

    invoke-static {v1, v0}, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A01(Landroid/content/Context;Z)Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0T:Landroid/view/Surface;

    .line 3935
    iget-object p1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0T:Landroid/view/Surface;

    goto :goto_0

    .line 3936
    :goto_2
    :try_start_0
    invoke-static {v4, p1}, Lcom/facebook/ads/redexgen/X/0O;->A0d(Lcom/facebook/ads/redexgen/X/AO;Landroid/view/Surface;)V

    goto :goto_3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3937
    .local v7, "e":Ljava/lang/IllegalStateException;
    :catch_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0O;->A1n()V

    .line 3938
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/14;->A1p()V

    .end local v7    # "e":Ljava/lang/IllegalStateException;
    goto :goto_3

    .line 3939
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0O;->A1n()V

    .line 3940
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/14;->A1p()V

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 3941
    .end local v1    # "state":I
    .end local v2    # "shouldSetJoiningDeadline":Z
    :cond_6
    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0T:Landroid/view/Surface;

    if-eq p1, v0, :cond_d

    .line 3942
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0O;->A0M()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_7

    .line 3943
    sget-object v2, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v1, "VhVyjLmIQ4bbJ9563iENK2u1xmxcLHgS"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0O;->A0L()V

    goto :goto_4

    :cond_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0O;->A0L()V

    goto :goto_4

    .line 3944
    :cond_8
    invoke-static {v4, p1}, Lcom/facebook/ads/redexgen/X/0O;->A0d(Lcom/facebook/ads/redexgen/X/AO;Landroid/view/Surface;)V

    .line 3945
    .end local v6    # "codec":Lcom/facebook/ads/redexgen/X/AO;
    :cond_9
    :goto_3
    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0T:Landroid/view/Surface;

    if-eq p1, v0, :cond_e

    .line 3946
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0O;->A0M()V

    .line 3947
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0O;->A0E()V

    .line 3948
    if-eq v2, v5, :cond_a

    if-eqz v6, :cond_b

    .line 3949
    :cond_a
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0O;->A0N()V

    .line 3950
    :cond_b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FC;->A0G()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3951
    sget-object v0, Lcom/facebook/ads/redexgen/X/i2;->A0j:Lcom/facebook/ads/redexgen/X/i2;

    .line 3952
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/i5;->A03(Lcom/facebook/ads/redexgen/X/i2;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    .line 3953
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FC;->A00(Lcom/facebook/ads/redexgen/X/FC;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v3, 0x1

    .line 3954
    .local v3, "shouldIgnoreUnknownSurfaceSize":Z
    :cond_c
    if-nez v3, :cond_d

    .line 3955
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    sget-object v0, Lcom/facebook/ads/redexgen/X/4N;->A03:Lcom/facebook/ads/redexgen/X/4N;

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/FC;->A0C(Landroid/view/Surface;Lcom/facebook/ads/redexgen/X/4N;)V

    .line 3956
    :cond_d
    :goto_4
    return-void

    .line 3957
    :cond_e
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0O;->A0F()V

    .line 3958
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0O;->A0E()V

    .line 3959
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FC;->A0G()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3960
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FC;->A08()V

    const/4 v0, 0x0

    throw v0
.end method

.method private A0V(Lcom/facebook/ads/redexgen/X/or;)V
    .locals 6

    .line 3961
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/14;->A1j()Lcom/facebook/ads/redexgen/X/AO;

    move-result-object v0

    .line 3962
    .local v0, "codec":Lcom/facebook/ads/redexgen/X/AO;
    if-nez v0, :cond_0

    .line 3963
    return-void

    .line 3964
    :cond_0
    if-eqz p1, :cond_1

    .line 3965
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AO;->A8b()Landroid/util/Pair;

    move-result-object v5

    .line 3966
    .local v1, "newSampleDecodeTimeAndCount":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    .line 3967
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A0j:Lcom/facebook/ads/redexgen/X/5g;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/5g;->A04(Landroid/util/Pair;)V

    .line 3968
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/0O;->A0u:Lcom/facebook/ads/redexgen/X/Fn;

    sget-object v1, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v1, "UGSzGWhN7NgjOmIm99IkQUILfPM9Cd"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A0j:Lcom/facebook/ads/redexgen/X/5g;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/5g;->A00:I

    invoke-virtual {v3, v0, p1}, Lcom/facebook/ads/redexgen/X/Fn;->A04(ILcom/facebook/ads/redexgen/X/or;)V

    .line 3969
    .end local v1    # "newSampleDecodeTimeAndCount":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A0W(Lcom/facebook/ads/redexgen/X/AO;IJ)V
    .locals 3

    .line 3970
    const/16 v2, 0x4ee

    const/16 v1, 0xf

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4S;->A02(Ljava/lang/String;)V

    .line 3971
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/facebook/ads/redexgen/X/AO;->AGy(IZ)V

    .line 3972
    invoke-static {}, Lcom/facebook/ads/redexgen/X/4S;->A00()V

    .line 3973
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0Q(I)V

    .line 3974
    return-void
.end method

.method private final A0X(Lcom/facebook/ads/redexgen/X/AO;IJ)V
    .locals 7
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "D36797879: Adding implementation for calculating avg render time"
    .end annotation

    .line 3975
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0w:Z

    if-eqz v0, :cond_0

    .line 3976
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/0O;->A0Y(Lcom/facebook/ads/redexgen/X/AO;IJ)V

    .line 3977
    return-void

    .line 3978
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0O;->A0K()V

    .line 3979
    :try_start_0
    const/16 v2, 0x5f9

    const/16 v1, 0x13

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4S;->A02(Ljava/lang/String;)V

    .line 3980
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 3981
    .local v0, "startRenderTime":J
    const/4 v4, 0x1

    invoke-interface {p1, p2, v4}, Lcom/facebook/ads/redexgen/X/AO;->AGy(IZ)V

    .line 3982
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/14;->A0h:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v5

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/14;->A0h:J

    .line 3983
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/0O;->A0P:J

    .line 3984
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/14;->A0j:Lcom/facebook/ads/redexgen/X/5g;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/5g;->A09:I

    add-int/2addr v0, v4

    iput v0, v1, Lcom/facebook/ads/redexgen/X/5g;->A09:I

    .line 3985
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0O;->A0H()V

    .line 3986
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0O;->A27()V

    .line 3987
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0O;->A0O()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3988
    .end local v0    # "startRenderTime":J
    invoke-static {}, Lcom/facebook/ads/redexgen/X/4S;->A00()V

    .line 3989
    return-void

    .line 3990
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4S;->A00()V

    .line 3991
    throw v0
.end method

.method private final A0Y(Lcom/facebook/ads/redexgen/X/AO;IJ)V
    .locals 7
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "D36797879: Adding implementation for calculating avg render time"
    .end annotation

    .line 3992
    const/16 v2, 0x5f9

    const/16 v1, 0x13

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4S;->A02(Ljava/lang/String;)V

    .line 3993
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 3994
    .local v0, "startRenderTime":J
    const/4 v4, 0x1

    invoke-interface {p1, p2, v4}, Lcom/facebook/ads/redexgen/X/AO;->AGy(IZ)V

    .line 3995
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/14;->A0h:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v5

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/14;->A0h:J

    .line 3996
    invoke-static {}, Lcom/facebook/ads/redexgen/X/4S;->A00()V

    .line 3997
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/14;->A0j:Lcom/facebook/ads/redexgen/X/5g;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/5g;->A09:I

    add-int/2addr v0, v4

    iput v0, v1, Lcom/facebook/ads/redexgen/X/5g;->A09:I

    .line 3998
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0O;->A0H()V

    .line 3999
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FC;->A0G()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4000
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/0O;->A0P:J

    .line 4001
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0O;->A0K()V

    .line 4002
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0O;->A27()V

    .line 4003
    :cond_0
    return-void
.end method

.method private final A0Z(Lcom/facebook/ads/redexgen/X/AO;IJ)V
    .locals 3

    .line 4004
    const/16 v2, 0x62b

    const/16 v1, 0xf

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4S;->A02(Ljava/lang/String;)V

    .line 4005
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/facebook/ads/redexgen/X/AO;->AGy(IZ)V

    .line 4006
    invoke-static {}, Lcom/facebook/ads/redexgen/X/4S;->A00()V

    .line 4007
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/14;->A0j:Lcom/facebook/ads/redexgen/X/5g;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/5g;->A0B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/5g;->A0B:I

    .line 4008
    return-void
.end method

.method private final A0a(Lcom/facebook/ads/redexgen/X/AO;IJJ)V
    .locals 20
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "D36797879: Adding implementation for calculating avg render time"
    .end annotation

    .line 4009
    move-object/from16 v4, p0

    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/0O;->A0w:Z

    move-wide/from16 v11, p5

    move-wide/from16 v9, p3

    move/from16 v8, p2

    move-object/from16 v7, p1

    if-eqz v0, :cond_0

    .line 4010
    const/4 v13, 0x1

    move-object v6, v4

    invoke-direct/range {v6 .. v13}, Lcom/facebook/ads/redexgen/X/0O;->A0c(Lcom/facebook/ads/redexgen/X/AO;IJJZ)V

    .line 4011
    return-void

    .line 4012
    :cond_0
    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/0O;->A0K()V

    .line 4013
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/14;->A0i:Lcom/facebook/ads/redexgen/X/or;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/0O;->A0S:Landroid/media/MediaFormat;

    move-object v13, v4

    move-wide v14, v9

    move-wide/from16 v16, v11

    move-object/from16 v18, v1

    move-object/from16 v19, v0

    invoke-direct/range {v13 .. v19}, Lcom/facebook/ads/redexgen/X/0O;->A0S(JJLcom/facebook/ads/redexgen/X/or;Landroid/media/MediaFormat;)V

    .line 4014
    :try_start_0
    const/16 v2, 0x5f9

    const/16 v1, 0x13

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4S;->A02(Ljava/lang/String;)V

    .line 4015
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 4016
    .local v0, "startRenderTime":J
    invoke-interface {v7, v8, v11, v12}, Lcom/facebook/ads/redexgen/X/AO;->AGx(IJ)V

    .line 4017
    iget-wide v2, v4, Lcom/facebook/ads/redexgen/X/14;->A0h:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v5

    add-long/2addr v2, v0

    iput-wide v2, v4, Lcom/facebook/ads/redexgen/X/14;->A0h:J

    .line 4018
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iput-wide v2, v4, Lcom/facebook/ads/redexgen/X/0O;->A0P:J

    .line 4019
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/14;->A0j:Lcom/facebook/ads/redexgen/X/5g;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/5g;->A09:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/5g;->A09:I

    .line 4020
    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/0O;->A0H()V

    .line 4021
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/0O;->A27()V

    .line 4022
    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/0O;->A0O()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4023
    .end local v0    # "startRenderTime":J
    invoke-static {}, Lcom/facebook/ads/redexgen/X/4S;->A00()V

    .line 4024
    return-void

    .line 4025
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4S;->A00()V

    .line 4026
    throw v0
.end method

.method private final A0b(Lcom/facebook/ads/redexgen/X/AO;IJJZ)V
    .locals 20
    .param p1    # Lcom/facebook/ads/redexgen/X/AO;
        .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        .end annotation
    .end param

    .line 4027
    move-object/from16 v6, p0

    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/0O;->A0w:Z

    move-wide/from16 v9, p3

    move/from16 v8, p2

    move-object/from16 v7, p1

    move-wide/from16 v11, p5

    if-eqz v0, :cond_0

    .line 4028
    move/from16 v13, p7

    invoke-direct/range {v6 .. v13}, Lcom/facebook/ads/redexgen/X/0O;->A0c(Lcom/facebook/ads/redexgen/X/AO;IJJZ)V

    .line 4029
    return-void

    .line 4030
    :cond_0
    invoke-direct {v6}, Lcom/facebook/ads/redexgen/X/0O;->A0K()V

    .line 4031
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/14;->A0i:Lcom/facebook/ads/redexgen/X/or;

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/0O;->A0S:Landroid/media/MediaFormat;

    move-object v13, v6

    move-wide v14, v9

    move-wide/from16 v16, v11

    move-object/from16 v18, v1

    move-object/from16 v19, v0

    invoke-direct/range {v13 .. v19}, Lcom/facebook/ads/redexgen/X/0O;->A0S(JJLcom/facebook/ads/redexgen/X/or;Landroid/media/MediaFormat;)V

    .line 4032
    :try_start_0
    const/16 v2, 0x5f9

    const/16 v1, 0x13

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4S;->A02(Ljava/lang/String;)V

    .line 4033
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 4034
    .local v0, "startRenderTime":J
    invoke-interface {v7, v8, v11, v12}, Lcom/facebook/ads/redexgen/X/AO;->AGx(IJ)V

    .line 4035
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/14;->A0h:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v4

    add-long/2addr v2, v0

    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/14;->A0h:J

    .line 4036
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/0O;->A0P:J

    .line 4037
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/14;->A0j:Lcom/facebook/ads/redexgen/X/5g;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/5g;->A09:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/5g;->A09:I

    .line 4038
    invoke-direct {v6}, Lcom/facebook/ads/redexgen/X/0O;->A0H()V

    .line 4039
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/0O;->A27()V

    .line 4040
    invoke-direct {v6}, Lcom/facebook/ads/redexgen/X/0O;->A0O()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4041
    .end local v0    # "startRenderTime":J
    invoke-static {}, Lcom/facebook/ads/redexgen/X/4S;->A00()V

    .line 4042
    return-void

    .line 4043
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4S;->A00()V

    .line 4044
    throw v0
.end method

.method private final A0c(Lcom/facebook/ads/redexgen/X/AO;IJJZ)V
    .locals 10
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "notifyFrameMetadataListener be removed once we take the Exo renderOutputBufferNow Function refactor"
    .end annotation

    .line 4045
    move-wide v6, p5

    if-eqz p7, :cond_0

    .line 4046
    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/14;->A0i:Lcom/facebook/ads/redexgen/X/or;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/0O;->A0S:Landroid/media/MediaFormat;

    move-object v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v1, "fwcrFdVwexqT3olBri8BzspmWxCtZa94"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    move-wide v4, p3

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/0O;->A0S(JJLcom/facebook/ads/redexgen/X/or;Landroid/media/MediaFormat;)V

    .line 4047
    :cond_0
    const/16 v2, 0x5f9

    const/16 v1, 0x13

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4S;->A02(Ljava/lang/String;)V

    .line 4048
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 4049
    .local v0, "startRenderTime":J
    invoke-interface {p1, p2, v6, v7}, Lcom/facebook/ads/redexgen/X/AO;->AGx(IJ)V

    .line 4050
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/14;->A0h:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/14;->A0h:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_2

    .line 4051
    sget-object v2, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v1, "NtBdNhJ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "S1Pe4Cz"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4S;->A00()V

    .line 4052
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/14;->A0j:Lcom/facebook/ads/redexgen/X/5g;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/5g;->A09:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/5g;->A09:I

    .line 4053
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0O;->A0H()V

    .line 4054
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FC;->A0G()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4055
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/0O;->A0P:J

    .line 4056
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0O;->A0K()V

    .line 4057
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0O;->A27()V

    .line 4058
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0O;->A0O()V

    .line 4059
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0d(Lcom/facebook/ads/redexgen/X/AO;Landroid/view/Surface;)V
    .locals 0

    .line 4060
    invoke-interface {p0, p1}, Lcom/facebook/ads/redexgen/X/AO;->AIr(Landroid/view/Surface;)V

    .line 4061
    return-void
.end method

.method public static synthetic A0e(Lcom/facebook/ads/redexgen/X/0O;JJLcom/facebook/ads/redexgen/X/or;Landroid/media/MediaFormat;)V
    .locals 0

    .line 4062
    invoke-direct/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/0O;->A0S(JJLcom/facebook/ads/redexgen/X/or;Landroid/media/MediaFormat;)V

    return-void
.end method

.method private A0f(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 4063
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0d:Z

    .line 4064
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/14;->A1j()Lcom/facebook/ads/redexgen/X/AO;

    move-result-object v0

    .line 4065
    .local v0, "codec":Lcom/facebook/ads/redexgen/X/AO;
    return-void
.end method

.method private A0g()Z
    .locals 8

    .line 4066
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0n:I

    const/4 v7, 0x0

    if-gtz v0, :cond_0

    .line 4067
    return v7

    .line 4068
    :cond_0
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0K:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v5

    if-eqz v0, :cond_1

    .line 4069
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0K:J

    sub-long/2addr v3, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0n:I

    int-to-long v1, v0

    cmp-long v0, v3, v1

    if-gtz v0, :cond_2

    :cond_1
    const/4 v7, 0x1

    .line 4070
    .local v0, "continueRetry":Z
    :cond_2
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0K:J

    cmp-long v0, v1, v5

    if-nez v0, :cond_3

    .line 4071
    const/16 v2, 0x2aa

    const/16 v1, 0x17

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x385

    const/16 v1, 0x14

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 4072
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0K:J

    .line 4073
    :cond_3
    return v7
.end method

.method public static A0h()Z
    .locals 2

    .line 4074
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0i()Z
    .locals 3

    .line 4075
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x16

    if-gt v1, v0, :cond_0

    const/16 v2, 0x500

    const/4 v1, 0x6

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v2, 0x2d5

    const/4 v1, 0x6

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/4a;->A05:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A0j()Z
    .locals 1

    .line 4076
    invoke-static {}, Lcom/facebook/ads/redexgen/X/0O;->A0h()Z

    move-result v0

    return v0
.end method

.method public static A0k(J)Z
    .locals 3

    .line 4077
    const-wide/16 v1, -0x7530

    cmp-long v0, p0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0l(J)Z
    .locals 3

    .line 4078
    const-wide/32 v1, -0x7a120

    cmp-long v0, p0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0m(JJ)Z
    .locals 10

    .line 4079
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9Z;->A92()I

    move-result v1

    const/4 v0, 0x2

    const/4 v9, 0x1

    if-ne v1, v0, :cond_6

    const/4 v8, 0x1

    .line 4080
    .local v0, "isStarted":Z
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0j:Z

    if-nez v0, :cond_4

    .line 4081
    if-nez v8, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0g:Z

    if-eqz v0, :cond_3

    :cond_0
    const/4 v7, 0x1

    .line 4082
    .local v1, "shouldRenderFirstFrame":Z
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/0O;->A0P:J

    sub-long/2addr v1, v3

    .line 4083
    .local v4, "elapsedSinceLastRenderUs":J
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/0O;->A0M:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    .line 4084
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/14;->A1i()J

    move-result-wide v3

    cmp-long v0, p1, v3

    if-ltz v0, :cond_2

    if-nez v7, :cond_1

    if-eqz v8, :cond_2

    .line 4085
    invoke-direct {p0, p3, p4, v1, v2}, Lcom/facebook/ads/redexgen/X/0O;->A0p(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4086
    :cond_1
    :goto_2
    return v9

    .line 4087
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 4088
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 4089
    :cond_4
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0i:Z

    if-nez v0, :cond_5

    const/4 v7, 0x1

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .line 4090
    :cond_6
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private final A0n(JJ)Z
    .locals 1

    .line 4091
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/0O;->A0l(J)Z

    move-result v0

    return v0
.end method

.method private final A0o(JJ)Z
    .locals 1

    .line 4092
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/0O;->A0k(J)Z

    move-result v0

    return v0
.end method

.method private final A0p(JJ)Z
    .locals 3

    .line 4093
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/0O;->A0k(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v1, 0x186a0

    cmp-long v0, p3, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final A0q(Lcom/facebook/ads/redexgen/X/AO;IJJ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 4094
    invoke-virtual {p0, p5, p6}, Lcom/facebook/ads/redexgen/X/9Z;->A1Q(J)I

    move-result v3

    .line 4095
    .local v0, "droppedSourceBufferCount":I
    if-nez v3, :cond_0

    .line 4096
    const/4 v0, 0x0

    return v0

    .line 4097
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/14;->A0j:Lcom/facebook/ads/redexgen/X/5g;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/5g;->A06:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/5g;->A06:I

    .line 4098
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A04:I

    add-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0Q(I)V

    .line 4099
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0O;->A1m()V

    .line 4100
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FC;->A0G()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4101
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FC;->A09()V

    const/4 v0, 0x0

    throw v0

    .line 4102
    :cond_1
    return v1
.end method

.method private A0r(Lcom/facebook/ads/redexgen/X/AR;)Z
    .locals 2

    .line 4103
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0e:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0k:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/AR;->A03:Ljava/lang/String;

    .line 4104
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0u(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/AR;->A06:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0q:Landroid/content/Context;

    .line 4105
    invoke-static {v0}, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A05(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 4106
    :goto_0
    return v0

    .line 4107
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A0s(Lcom/facebook/ads/redexgen/X/0O;)Z
    .locals 0

    .line 4108
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/14;->A21()Z

    move-result p0

    return p0
.end method

.method public static synthetic A0t(Lcom/facebook/ads/redexgen/X/0O;JJ)Z
    .locals 0

    .line 4109
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/0O;->A0m(JJ)Z

    move-result p0

    return p0
.end method

.method private final A0u(Ljava/lang/String;)Z
    .locals 8

    .line 4110
    const/16 v2, 0x2e7

    const/16 v1, 0xa

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 4111
    return v6

    .line 4112
    :cond_0
    const-class v4, Lcom/facebook/ads/redexgen/X/0O;

    monitor-enter v4

    .line 4113
    :try_start_0
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/0O;->A10:Z

    if-nez v0, :cond_1

    .line 4114
    const/16 v2, 0x4e5

    const/4 v1, 0x6

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    .line 4115
    sput-boolean v5, Lcom/facebook/ads/redexgen/X/0O;->A0z:Z

    .line 4116
    :goto_0
    sput-boolean v5, Lcom/facebook/ads/redexgen/X/0O;->A10:Z

    .line 4117
    :cond_1
    monitor-exit v4

    goto/16 :goto_8

    .line 4118
    :cond_2
    sget v0, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v7, 0x1b

    if-gt v0, v7, :cond_3

    const/16 v2, 0x233

    const/4 v1, 0x5

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4119
    sput-boolean v5, Lcom/facebook/ads/redexgen/X/0O;->A0z:Z

    goto :goto_0

    .line 4120
    :cond_3
    sget v0, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    if-lt v0, v7, :cond_4

    goto :goto_0

    .line 4121
    :cond_4
    sget-object v1, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const/16 v3, 0x23f

    const/4 v2, 0x7

    const/16 v0, 0x44

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x37

    goto/16 :goto_3

    :sswitch_1
    const/16 v3, 0x238

    const/4 v2, 0x7

    const/16 v0, 0x50

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x36

    goto/16 :goto_3

    :sswitch_2
    const/16 v3, 0x13a

    const/16 v2, 0xa

    const/16 v0, 0x7e

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x1c

    goto/16 :goto_3

    :sswitch_3
    const/16 v3, 0x130

    const/16 v2, 0xa

    const/16 v0, 0x79

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_3

    :sswitch_4
    const/16 v3, 0x6f

    const/16 v2, 0xc

    const/4 v0, 0x6

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0xc

    goto/16 :goto_3

    :sswitch_5
    const/16 v3, 0x22c

    const/4 v2, 0x7

    const/16 v0, 0x34

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x35

    goto/16 :goto_3

    :sswitch_6
    const/16 v3, 0x225

    const/4 v2, 0x7

    const/16 v0, 0x23

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x34

    goto/16 :goto_3

    :sswitch_7
    const/16 v3, 0xcc

    const/16 v2, 0xe

    const/16 v0, 0x4b

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x10

    goto/16 :goto_3

    :sswitch_8
    const/16 v3, 0x246

    const/16 v2, 0xc

    const/16 v0, 0x57

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x3a

    goto/16 :goto_3

    :sswitch_9
    const/16 v3, 0x301

    const/16 v2, 0x8

    const/4 v0, 0x4

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x57

    goto/16 :goto_3

    :sswitch_a
    const/16 v3, 0x624

    const/4 v2, 0x7

    const/16 v0, 0x4c

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x67

    goto/16 :goto_3

    :sswitch_b
    const/16 v3, 0x53b

    const/16 v2, 0xe

    const/4 v0, 0x3

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x39

    goto/16 :goto_3

    :sswitch_c
    const/16 v3, 0xe6

    const/4 v2, 0x7

    const/16 v0, 0x2c

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x14

    goto/16 :goto_3

    :sswitch_d
    const/16 v3, 0x6e0

    const/4 v2, 0x7

    const/16 v0, 0x2a

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x77

    goto/16 :goto_3

    :sswitch_e
    const/16 v3, 0x521

    const/16 v2, 0xe

    const/16 v0, 0x50

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x32

    goto/16 :goto_3

    :sswitch_f
    const/16 v3, 0x14f

    const/16 v2, 0xa

    const/16 v0, 0x57

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x1e

    goto/16 :goto_3

    :sswitch_10
    const/16 v3, 0x52f

    const/4 v2, 0x7

    const/16 v0, 0x40

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x33

    goto/16 :goto_3

    :sswitch_11
    const/16 v3, 0x54f

    const/16 v2, 0x8

    const/16 v0, 0x5c

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x3c

    goto/16 :goto_3

    :sswitch_12
    const/16 v3, 0x270

    const/4 v2, 0x7

    const/16 v0, 0x10

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x43

    goto/16 :goto_3

    :sswitch_13
    const/16 v3, 0x5ce

    const/16 v2, 0x8

    const/16 v0, 0x18

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x53

    goto/16 :goto_3

    :sswitch_14
    const/16 v3, 0x557

    const/16 v2, 0x9

    const/16 v0, 0x27

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x3d

    goto/16 :goto_3

    :sswitch_15
    const/16 v3, 0x2e

    const/16 v2, 0x9

    const/16 v0, 0x47

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x8

    goto/16 :goto_3

    :sswitch_16
    const/16 v3, 0x580

    const/4 v2, 0x7

    const/16 v0, 0x9

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x45

    goto/16 :goto_3

    :sswitch_17
    const/16 v3, 0x1ed

    const/16 v2, 0xe

    const/16 v0, 0x3c

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x30

    goto/16 :goto_3

    :sswitch_18
    const/16 v3, 0x1df

    const/16 v2, 0xe

    const/16 v0, 0x18

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x2f

    goto/16 :goto_3

    :sswitch_19
    const/16 v3, 0x1d1

    const/16 v2, 0xe

    const/16 v0, 0x41

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x2e

    goto/16 :goto_3

    :sswitch_1a
    const/16 v3, 0x35a

    const/16 v2, 0x8

    const/16 v0, 0x24

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x65

    goto/16 :goto_3

    :sswitch_1b
    const/16 v3, 0x33b

    const/16 v2, 0xb

    const/16 v0, 0x58

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x5d

    goto/16 :goto_3

    :sswitch_1c
    const/16 v3, 0x425

    const/16 v2, 0x8

    const/16 v0, 0x31

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x6f

    goto/16 :goto_3

    :sswitch_1d
    const/16 v3, 0x41d

    const/16 v2, 0x8

    const/16 v0, 0x5d

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x6e

    goto/16 :goto_3

    :sswitch_1e
    const/16 v3, 0x415

    const/16 v2, 0x8

    const/16 v0, 0x23

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x6d

    goto/16 :goto_3

    :sswitch_1f
    const/16 v3, 0x40d

    const/16 v2, 0x8

    const/16 v0, 0x23

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x6c

    goto/16 :goto_3

    :sswitch_20
    const/16 v3, 0x3f

    const/16 v2, 0x8

    const/16 v0, 0x21

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0xa

    goto/16 :goto_3

    :sswitch_21
    const/16 v3, 0x37

    const/16 v2, 0x8

    const/16 v0, 0x3e

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x9

    goto/16 :goto_3

    :sswitch_22
    const/16 v3, 0x514

    const/4 v2, 0x7

    const/16 v0, 0x5b

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x31

    goto/16 :goto_3

    :sswitch_23
    const/16 v3, 0x587

    const/16 v2, 0x8

    const/16 v0, 0x7b

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x46

    goto/16 :goto_3

    :sswitch_24
    const/16 v3, 0xed

    const/16 v2, 0x9

    const/16 v0, 0x20

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x15

    goto/16 :goto_3

    :sswitch_25
    const/16 v3, 0x1f

    const/16 v2, 0x8

    const/4 v0, 0x7

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v7, 0x6

    goto/16 :goto_3

    :sswitch_26
    const/16 v3, 0x569

    const/4 v2, 0x5

    const/4 v0, 0x5

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x42

    goto/16 :goto_3

    :sswitch_27
    const/16 v3, 0x564

    const/4 v2, 0x5

    const/16 v0, 0x28

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x41

    goto/16 :goto_3

    :sswitch_28
    const/16 v3, 0x536

    const/4 v2, 0x5

    const/16 v0, 0x32

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x38

    goto/16 :goto_3

    :sswitch_29
    const/16 v3, 0x468

    const/4 v2, 0x5

    const/16 v0, 0x58

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x79

    goto/16 :goto_3

    :sswitch_2a
    const/16 v3, 0x45c

    const/4 v2, 0x5

    const/16 v0, 0xe

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x72

    goto/16 :goto_3

    :sswitch_2b
    const/16 v3, 0x353

    const/4 v2, 0x5

    const/16 v0, 0x13

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x63

    goto/16 :goto_3

    :sswitch_2c
    const/16 v3, 0x34a

    const/4 v2, 0x5

    const/16 v0, 0x63

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x61

    goto/16 :goto_3

    :sswitch_2d
    const/16 v3, 0x31e

    const/4 v2, 0x5

    const/16 v0, 0x22

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x5f

    goto/16 :goto_3

    :sswitch_2e
    const/16 v3, 0x177

    const/4 v2, 0x5

    const/4 v0, 0x7

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x25

    goto/16 :goto_3

    :sswitch_2f
    const/16 v3, 0x172

    const/4 v2, 0x5

    const/16 v0, 0x49

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x24

    goto/16 :goto_3

    :sswitch_30
    const/16 v3, 0x16d

    const/4 v2, 0x5

    const/4 v0, 0x1

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x23

    goto/16 :goto_3

    :sswitch_31
    const/16 v3, 0x168

    const/4 v2, 0x5

    const/16 v0, 0xd

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x22

    goto/16 :goto_3

    :sswitch_32
    const/16 v3, 0x163

    const/4 v2, 0x5

    const/16 v0, 0x22

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x21

    goto/16 :goto_3

    :sswitch_33
    const/16 v3, 0x15e

    const/4 v2, 0x5

    const/16 v0, 0x67

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x20

    goto/16 :goto_3

    :sswitch_34
    const/16 v3, 0x159

    const/4 v2, 0x5

    const/16 v0, 0x75

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x1f

    goto/16 :goto_3

    :sswitch_35
    const/16 v3, 0x11f

    const/4 v2, 0x5

    const/16 v0, 0x36

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x19

    goto/16 :goto_3

    :sswitch_36
    const/16 v3, 0x1a

    const/4 v2, 0x5

    const/16 v0, 0x4e

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v7, 0x5

    goto/16 :goto_3

    :sswitch_37
    const/16 v3, 0xa0

    const/16 v2, 0xb

    const/16 v0, 0x6c

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0xd

    goto/16 :goto_3

    :sswitch_38
    const/16 v3, 0x29f

    const/16 v2, 0x8

    const/16 v0, 0x22

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x47

    goto/16 :goto_3

    :sswitch_39
    const/16 v3, 0x5ca

    const/4 v2, 0x4

    const/16 v0, 0x30

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x50

    goto/16 :goto_3

    :sswitch_3a
    const/16 v3, 0x5b2

    const/4 v2, 0x4

    const/16 v0, 0x41

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x49

    goto/16 :goto_3

    :sswitch_3b
    const/16 v3, 0x560

    const/4 v2, 0x4

    const/16 v0, 0x2f

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x40

    goto/16 :goto_3

    :sswitch_3c
    const/16 v3, 0x510

    const/4 v2, 0x4

    const/16 v0, 0x5e

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x27

    goto/16 :goto_3

    :sswitch_3d
    const/16 v3, 0x46d

    const/4 v2, 0x4

    const/4 v0, 0x2

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x7a

    goto/16 :goto_3

    :sswitch_3e
    const/16 v3, 0x34f

    const/4 v2, 0x4

    const/16 v0, 0x41

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x62

    goto/16 :goto_3

    :sswitch_3f
    const/16 v3, 0x346

    const/4 v2, 0x4

    const/16 v0, 0x23

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x60

    goto/16 :goto_3

    :sswitch_40
    const/16 v3, 0x2fa

    const/4 v2, 0x4

    const/16 v0, 0x76

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x51

    goto/16 :goto_3

    :sswitch_41
    const/16 v3, 0x8

    const/4 v2, 0x4

    const/16 v0, 0x24

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v7, 0x2

    goto/16 :goto_3

    :sswitch_42
    const/4 v3, 0x4

    const/4 v2, 0x4

    const/16 v0, 0x28

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v7, 0x1

    goto/16 :goto_3

    :sswitch_43
    const/4 v3, 0x0

    const/4 v2, 0x4

    const/16 v0, 0x28

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v7, 0x0

    goto/16 :goto_3

    :sswitch_44
    const/16 v3, 0x4fd

    const/4 v2, 0x3

    const/4 v0, 0x5

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x26

    goto/16 :goto_3

    :sswitch_45
    const/16 v3, 0x4eb

    const/4 v2, 0x3

    const/16 v0, 0x61

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x18

    goto/16 :goto_3

    :sswitch_46
    const/16 v3, 0x4e2

    const/4 v2, 0x3

    const/4 v0, 0x4

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x17

    goto/16 :goto_3

    :sswitch_47
    const/16 v3, 0x4df

    const/4 v2, 0x3

    const/16 v0, 0x7a

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x16

    goto/16 :goto_3

    :sswitch_48
    const/16 v3, 0x47e

    const/4 v2, 0x3

    const/16 v0, 0x45

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x7d

    goto/16 :goto_3

    :sswitch_49
    const/16 v3, 0x362

    const/4 v2, 0x3

    const/16 v0, 0x2d

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x66

    goto/16 :goto_3

    :sswitch_4a
    const/16 v3, 0x31b

    const/4 v2, 0x3

    const/16 v0, 0x5d

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x5e

    goto/16 :goto_3

    :sswitch_4b
    const/16 v3, 0x2fe

    const/4 v2, 0x3

    const/16 v0, 0x27

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x52

    goto/16 :goto_3

    :sswitch_4c
    const/16 v3, 0x2a7

    const/4 v2, 0x3

    const/16 v0, 0x13

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x4a

    goto/16 :goto_3

    :sswitch_4d
    const/16 v3, 0x29c

    const/4 v2, 0x3

    const/16 v0, 0x21

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x44

    goto/16 :goto_3

    :sswitch_4e
    const/16 v3, 0x252

    const/4 v2, 0x3

    const/16 v0, 0xc

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x3e

    goto/16 :goto_3

    :sswitch_4f
    const/16 v3, 0x5b0

    const/4 v2, 0x2

    const/16 v0, 0x8

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x48

    goto/16 :goto_3

    :sswitch_50
    const/16 v3, 0x461

    const/4 v2, 0x2

    const/16 v0, 0x13

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x73

    goto/16 :goto_3

    :sswitch_51
    const/16 v3, 0x45a

    const/4 v2, 0x2

    const/16 v0, 0x4a

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x71

    goto/16 :goto_3

    :sswitch_52
    const/16 v3, 0x358

    const/4 v2, 0x2

    const/16 v0, 0x2a

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x64

    goto/16 :goto_3

    :sswitch_53
    const/16 v3, 0xda

    const/4 v2, 0x2

    const/16 v0, 0x5d

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x11

    goto/16 :goto_3

    :sswitch_54
    const/16 v3, 0x6e7

    const/16 v2, 0x8

    const/16 v0, 0x29

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x78

    goto/16 :goto_3

    :sswitch_55
    const/16 v3, 0x124

    const/16 v2, 0xc

    const/16 v0, 0x4d

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x1a

    goto/16 :goto_3

    :sswitch_56
    const/16 v3, 0x477

    const/4 v2, 0x7

    const/16 v0, 0x4d

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x7c

    goto/16 :goto_3

    :sswitch_57
    const/16 v3, 0xab

    const/16 v2, 0x8

    const/16 v0, 0x76

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0xe

    goto/16 :goto_3

    :sswitch_58
    const/16 v3, 0x63a

    const/16 v2, 0x9

    const/16 v0, 0x77

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x6b

    goto/16 :goto_3

    :sswitch_59
    const/16 v3, 0x331

    const/16 v2, 0xa

    const/16 v0, 0x4e

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x5c

    goto/16 :goto_3

    :sswitch_5a
    const/16 v3, 0x199

    const/16 v2, 0xe

    const/16 v0, 0x10

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x2a

    goto/16 :goto_3

    :sswitch_5b
    const/16 v3, 0x1fb

    const/16 v2, 0xe

    const/16 v0, 0x49

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x28

    goto/16 :goto_3

    :sswitch_5c
    const/16 v3, 0x2f1

    const/16 v2, 0x9

    const/16 v0, 0x55

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x4f

    goto/16 :goto_3

    :sswitch_5d
    const/16 v3, 0x6d5

    const/4 v2, 0x6

    const/16 v0, 0x58

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x76

    goto/16 :goto_3

    :sswitch_5e
    const/16 v3, 0x6cf

    const/4 v2, 0x6

    const/16 v0, 0x36

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x75

    goto/16 :goto_3

    :sswitch_5f
    const/16 v3, 0x3ee

    const/16 v2, 0x9

    const/16 v0, 0x68

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x69

    goto/16 :goto_3

    :sswitch_60
    const/16 v3, 0x27

    const/4 v2, 0x7

    const/16 v0, 0x10

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v7, 0x7

    goto/16 :goto_3

    :sswitch_61
    const/16 v3, 0x5c0

    const/16 v2, 0xa

    const/16 v0, 0x1d

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x4c

    goto/16 :goto_3

    :sswitch_62
    const/16 v3, 0x643

    const/4 v2, 0x6

    const/16 v0, 0xe

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x70

    goto/16 :goto_3

    :sswitch_63
    const/16 v3, 0x144

    const/16 v2, 0xb

    const/4 v0, 0x1

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x1d

    goto/16 :goto_3

    :sswitch_64
    const/16 v3, 0x61c

    const/16 v2, 0x8

    const/16 v0, 0x1b

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x6a

    goto/16 :goto_3

    :sswitch_65
    const/16 v3, 0x13

    const/4 v2, 0x7

    const/16 v0, 0x6e

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v7, 0x4

    goto/16 :goto_3

    :sswitch_66
    const/16 v3, 0xc

    const/4 v2, 0x7

    const/16 v0, 0x78

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v7, 0x3

    goto/16 :goto_3

    :sswitch_67
    const/16 v3, 0x5ba

    const/4 v2, 0x6

    const/16 v0, 0x25

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x4b

    goto/16 :goto_3

    :sswitch_68
    const/16 v3, 0x3f7

    const/16 v2, 0x9

    const/16 v0, 0x1c

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x68

    goto/16 :goto_3

    :sswitch_69
    const/16 v3, 0x549

    const/4 v2, 0x6

    const/16 v0, 0x62

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x3b

    goto/16 :goto_3

    :sswitch_6a
    const/16 v3, 0xc1

    const/16 v2, 0xb

    const/16 v0, 0x36

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0xf

    goto/16 :goto_3

    :sswitch_6b
    const/16 v3, 0x209

    const/16 v2, 0xe

    const/16 v0, 0x4a

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x29

    goto/16 :goto_3

    :sswitch_6c
    const/16 v3, 0x5e8

    const/16 v2, 0x9

    const/16 v0, 0x2e

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x56

    goto/16 :goto_3

    :sswitch_6d
    const/16 v3, 0x5df

    const/16 v2, 0x9

    const/16 v0, 0x77

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x55

    goto/16 :goto_3

    :sswitch_6e
    const/16 v3, 0x5d6

    const/16 v2, 0x9

    const/16 v0, 0x3f

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x54

    goto/16 :goto_3

    :sswitch_6f
    const/16 v3, 0x65a

    const/16 v2, 0x9

    const/16 v0, 0x29

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x74

    goto/16 :goto_3

    :sswitch_70
    const/16 v3, 0x323

    const/16 v2, 0x8

    const/16 v0, 0x62

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x5b

    goto/16 :goto_3

    :sswitch_71
    const/16 v3, 0x118

    const/4 v2, 0x7

    const/16 v0, 0x6f

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x12

    goto/16 :goto_3

    :sswitch_72
    const/16 v3, 0x471

    const/4 v2, 0x6

    const/16 v0, 0x7b

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x7b

    goto/16 :goto_3

    :sswitch_73
    const/16 v3, 0x8a

    const/16 v2, 0xa

    const/4 v0, 0x6

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0xb

    goto/16 :goto_3

    :sswitch_74
    const/16 v3, 0x315

    const/4 v2, 0x6

    const/16 v0, 0x2c

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x5a

    goto/16 :goto_3

    :sswitch_75
    const/16 v3, 0x30f

    const/4 v2, 0x6

    const/16 v0, 0x51

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x59

    goto/16 :goto_3

    :sswitch_76
    const/16 v3, 0x309

    const/4 v2, 0x6

    const/16 v0, 0x1f

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x58

    goto/16 :goto_3

    :sswitch_77
    const/16 v3, 0x2e1

    const/4 v2, 0x6

    const/16 v0, 0x48

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x4e

    goto :goto_3

    :sswitch_78
    const/16 v3, 0x2db

    const/4 v2, 0x6

    const/4 v0, 0x0

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x4d

    goto :goto_3

    :sswitch_79
    const/16 v3, 0xdc

    const/16 v2, 0xa

    const/16 v0, 0x3b

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x13

    goto :goto_3

    :sswitch_7a
    const/16 v3, 0x25c

    const/4 v2, 0x6

    const/16 v0, 0x68

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x3f

    goto :goto_3

    :sswitch_7b
    const/16 v3, 0x1c3

    const/16 v2, 0xe

    const/16 v0, 0x17

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x2d

    goto :goto_3

    :sswitch_7c
    const/16 v3, 0x1b5

    const/16 v2, 0xe

    const/16 v0, 0x57

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x2c

    goto :goto_3

    :sswitch_7d
    const/16 v3, 0x1a7

    const/16 v2, 0xe

    const/16 v0, 0x50

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v7, -0x1

    goto :goto_3

    :goto_2
    const/16 v7, 0x2b

    :goto_3
    packed-switch v7, :pswitch_data_0

    goto :goto_4

    .line 4122
    :pswitch_0
    sput-boolean v5, Lcom/facebook/ads/redexgen/X/0O;->A0z:Z

    .line 4123
    :goto_4
    sget-object v1, Lcom/facebook/ads/redexgen/X/4a;->A06:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto/16 :goto_5

    :sswitch_7e
    const/16 v3, 0x293

    const/16 v2, 0x9

    const/16 v0, 0x75

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0xa

    goto/16 :goto_7

    :sswitch_7f
    const/16 v3, 0x400

    const/16 v2, 0xd

    const/16 v0, 0x7c

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0x1a

    goto/16 :goto_7

    :sswitch_80
    const/16 v3, 0x4f

    const/16 v2, 0xa

    const/16 v0, 0x3d

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v6, 0x3

    goto/16 :goto_7

    :sswitch_81
    const/16 v3, 0x286

    const/16 v2, 0xd

    const/16 v0, 0x2a

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0xd

    goto/16 :goto_7

    :sswitch_82
    const/16 v3, 0x269

    const/4 v2, 0x7

    const/16 v0, 0x27

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v6, 0x6

    goto/16 :goto_7

    :sswitch_83
    const/16 v3, 0x262

    const/4 v2, 0x7

    const/16 v0, 0x14

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0xe

    goto/16 :goto_7

    :sswitch_84
    const/16 v3, 0x3dd

    const/16 v2, 0x9

    const/16 v0, 0x30

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0x19

    goto/16 :goto_7

    :sswitch_85
    const/16 v3, 0x64

    const/16 v2, 0xb

    const/16 v0, 0x17

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0x15

    goto/16 :goto_7

    :sswitch_86
    const/16 v3, 0x59

    const/16 v2, 0xb

    const/16 v0, 0x1b

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v6, 0x4

    goto/16 :goto_7

    :sswitch_87
    const/16 v3, 0x3cc

    const/16 v2, 0x9

    const/16 v0, 0x4c

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0xc

    goto/16 :goto_7

    :sswitch_88
    const/16 v3, 0x217

    const/16 v2, 0xe

    const/16 v0, 0x14

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0x16

    goto/16 :goto_7

    :sswitch_89
    const/16 v3, 0x463

    const/4 v2, 0x5

    const/16 v0, 0x18

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0x18

    goto/16 :goto_7

    :sswitch_8a
    const/16 v3, 0x4b

    const/4 v2, 0x4

    const/16 v0, 0x15

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v6, 0x1

    goto/16 :goto_7

    :sswitch_8b
    const/16 v3, 0x47

    const/4 v2, 0x4

    const/16 v0, 0x6b

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_7

    :sswitch_8c
    const/16 v3, 0x7b

    const/16 v2, 0xf

    const/16 v0, 0x3f

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0x9

    goto/16 :goto_7

    :sswitch_8d
    const/16 v3, 0x3d5

    const/16 v2, 0x8

    const/16 v0, 0x53

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v6, 0x7

    goto/16 :goto_7

    :sswitch_8e
    const/16 v3, 0x3c4

    const/16 v2, 0x8

    const/16 v0, 0x2f

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0x17

    goto/16 :goto_7

    :sswitch_8f
    const/16 v3, 0x579

    const/4 v2, 0x7

    const/16 v0, 0x54

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0xb

    goto/16 :goto_7

    :sswitch_90
    const/16 v3, 0x255

    const/4 v2, 0x7

    const/16 v0, 0x5e

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v6, 0x2

    goto/16 :goto_7

    :sswitch_91
    const/16 v3, 0x365

    const/16 v2, 0x8

    const/16 v0, 0x75

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0x12

    goto/16 :goto_7

    :sswitch_92
    const/16 v3, 0x277

    const/16 v2, 0xf

    const/16 v0, 0x68

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0x11

    goto :goto_7

    :sswitch_93
    const/16 v3, 0x3e6

    const/16 v2, 0x8

    const/16 v0, 0x24

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0x13

    goto :goto_7

    :sswitch_94
    const/16 v3, 0x94

    const/16 v2, 0xc

    const/16 v0, 0x71

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0x14

    goto :goto_7

    :sswitch_95
    const/16 v3, 0x2c1

    const/16 v2, 0xe

    const/16 v0, 0x52

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0x10

    goto :goto_7

    :sswitch_96
    const/16 v3, 0x2cf

    const/4 v2, 0x6

    const/16 v0, 0x29

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0xf

    goto :goto_7

    :sswitch_97
    const/16 v3, 0x379

    const/16 v2, 0xc

    const/16 v0, 0x18

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v6, 0x5

    goto :goto_7

    :sswitch_98
    const/16 v3, 0x36d

    const/16 v2, 0xc

    const/16 v0, 0x58

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v6, -0x1

    goto :goto_7

    :goto_6
    const/16 v6, 0x8

    :goto_7
    packed-switch v6, :pswitch_data_1

    goto/16 :goto_0

    .line 4124
    :pswitch_1
    sput-boolean v5, Lcom/facebook/ads/redexgen/X/0O;->A0z:Z

    goto/16 :goto_0

    .line 4125
    :pswitch_2
    sput-boolean v5, Lcom/facebook/ads/redexgen/X/0O;->A0z:Z

    goto/16 :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4126
    :goto_8
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/0O;->A0z:Z

    return v0

    .line 4127
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_7d
        -0x7fd6c381 -> :sswitch_7c
        -0x7fd6c368 -> :sswitch_7b
        -0x7d026749 -> :sswitch_7a
        -0x78929d6a -> :sswitch_79
        -0x75f50a1e -> :sswitch_78
        -0x75f4fe9d -> :sswitch_77
        -0x736f875c -> :sswitch_76
        -0x736f83c2 -> :sswitch_75
        -0x736f83c1 -> :sswitch_74
        -0x7327ce1c -> :sswitch_73
        -0x651ebb62 -> :sswitch_72
        -0x6423293b -> :sswitch_71
        -0x604f5117 -> :sswitch_70
        -0x5ca40cc4 -> :sswitch_6f
        -0x58520ec1 -> :sswitch_6e
        -0x58520eba -> :sswitch_6d
        -0x58520eb9 -> :sswitch_6c
        -0x4eaed329 -> :sswitch_6b
        -0x4892fb4f -> :sswitch_6a
        -0x465b3df3 -> :sswitch_69
        -0x43e6c939 -> :sswitch_68
        -0x3ec0fcc5 -> :sswitch_67
        -0x3b33cca0 -> :sswitch_66
        -0x3b33cc9a -> :sswitch_65
        -0x398ae3f6 -> :sswitch_64
        -0x391f0fb4 -> :sswitch_63
        -0x346837ae -> :sswitch_62
        -0x323788e3 -> :sswitch_61
        -0x30f57652 -> :sswitch_60
        -0x2f88a116 -> :sswitch_5f
        -0x2f61ed98 -> :sswitch_5e
        -0x2efd0837 -> :sswitch_5d
        -0x2e9e9441 -> :sswitch_5c
        -0x2247b8b1 -> :sswitch_5b
        -0x1f0fa2b7 -> :sswitch_5a
        -0x19af3b41 -> :sswitch_59
        -0x114fad3e -> :sswitch_58
        -0x10dae90b -> :sswitch_57
        -0x1084b7b7 -> :sswitch_56
        -0xa5988e9 -> :sswitch_55
        -0x35f9fbf -> :sswitch_54
        0x84e -> :sswitch_53
        0xa04 -> :sswitch_52
        0xa9b -> :sswitch_51
        0xa9f -> :sswitch_50
        0xd9b -> :sswitch_4f
        0x11ebd -> :sswitch_4e
        0x127db -> :sswitch_4d
        0x12beb -> :sswitch_4c
        0x1334d -> :sswitch_4b
        0x135c9 -> :sswitch_4a
        0x13aea -> :sswitch_49
        0x158d2 -> :sswitch_48
        0x1821e -> :sswitch_47
        0x18220 -> :sswitch_46
        0x18401 -> :sswitch_45
        0x18c69 -> :sswitch_44
        0x1716e6 -> :sswitch_43
        0x171ac8 -> :sswitch_42
        0x171ac9 -> :sswitch_41
        0x252f5f -> :sswitch_40
        0x25981d -> :sswitch_3f
        0x259b88 -> :sswitch_3e
        0x290a13 -> :sswitch_3d
        0x3021fd -> :sswitch_3c
        0x321e47 -> :sswitch_3b
        0x332327 -> :sswitch_3a
        0x33ab63 -> :sswitch_39
        0x27691fb -> :sswitch_38
        0x349f581 -> :sswitch_37
        0x3ab0ea7 -> :sswitch_36
        0x3e53ea5 -> :sswitch_35
        0x3f25a44 -> :sswitch_34
        0x3f25a46 -> :sswitch_33
        0x3f25a49 -> :sswitch_32
        0x3f25e05 -> :sswitch_31
        0x3f25e07 -> :sswitch_30
        0x3f25e09 -> :sswitch_2f
        0x3f261c6 -> :sswitch_2e
        0x48dce49 -> :sswitch_2d
        0x48dd589 -> :sswitch_2c
        0x48dd8af -> :sswitch_2b
        0x4d36832 -> :sswitch_2a
        0x4f0b0e7 -> :sswitch_29
        0x5e2479e -> :sswitch_28
        0x60acc05 -> :sswitch_27
        0x6214744 -> :sswitch_26
        0x9d91379 -> :sswitch_25
        0xadc0551 -> :sswitch_24
        0xea056b3 -> :sswitch_23
        0x1121dbc3 -> :sswitch_22
        0x1255818c -> :sswitch_21
        0x1263990d -> :sswitch_20
        0x12d90f3a -> :sswitch_1f
        0x12d90f4c -> :sswitch_1e
        0x12d98b1b -> :sswitch_1d
        0x12d98b22 -> :sswitch_1c
        0x1844c711 -> :sswitch_1b
        0x1e3e8044 -> :sswitch_1a
        0x2f5336ed -> :sswitch_19
        0x2f54115e -> :sswitch_18
        0x2f541849 -> :sswitch_17
        0x31cf010e -> :sswitch_16
        0x36ad82f4 -> :sswitch_15
        0x391a0b61 -> :sswitch_14
        0x3f3728cd -> :sswitch_13
        0x448ec687 -> :sswitch_12
        0x46260f63 -> :sswitch_11
        0x4c505106 -> :sswitch_10
        0x4de67084 -> :sswitch_f
        0x506ac5a9 -> :sswitch_e
        0x5abad9cd -> :sswitch_d
        0x64d2e6e9 -> :sswitch_c
        0x65e4085b -> :sswitch_b
        0x6f373556 -> :sswitch_a
        0x719f1dcb -> :sswitch_9
        0x75d9a0f0 -> :sswitch_8
        0x7796d144 -> :sswitch_7
        0x78fc0e50 -> :sswitch_6
        0x790521fb -> :sswitch_5
        0x7933207f -> :sswitch_4
        0x7a05a409 -> :sswitch_3
        0x7a0696bd -> :sswitch_2
        0x7a16dfe7 -> :sswitch_1
        0x7a1f0e95 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x797bd2a9 -> :sswitch_98
        -0x797bd2a8 -> :sswitch_97
        -0x764842b7 -> :sswitch_96
        -0x56efdb18 -> :sswitch_95
        -0x4fb863e1 -> :sswitch_94
        -0x44aaf270 -> :sswitch_93
        -0x445f00b8 -> :sswitch_92
        -0x2a356629 -> :sswitch_91
        -0x236fe21d -> :sswitch_90
        -0x22afd633 -> :sswitch_8f
        -0x17f15937 -> :sswitch_8e
        -0x17ca4d0e -> :sswitch_8d
        -0x93ce2de -> :sswitch_8c
        0x1e9d52 -> :sswitch_8b
        0x1e9d5f -> :sswitch_8a
        0x4e27953 -> :sswitch_89
        0x1a302dd7 -> :sswitch_88
        0x1e80aae9 -> :sswitch_87
        0x24f121f5 -> :sswitch_86
        0x24f121f7 -> :sswitch_85
        0x25b7277f -> :sswitch_84
        0x301eae78 -> :sswitch_83
        0x301f8ff2 -> :sswitch_82
        0x3fd34a20 -> :sswitch_81
        0x6449d7cc -> :sswitch_80
        0x72869bf2 -> :sswitch_7f
        0x7f30d73a -> :sswitch_7e
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static A0v(ZLcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/or;)Z
    .locals 2

    .line 4128
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v1, p1, Lcom/facebook/ads/redexgen/X/or;->A0F:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/or;->A0F:I

    if-ne v1, v0, :cond_1

    if-nez p0, :cond_0

    iget v1, p1, Lcom/facebook/ads/redexgen/X/or;->A0L:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/or;->A0L:I

    if-ne v1, v0, :cond_1

    iget v1, p1, Lcom/facebook/ads/redexgen/X/or;->A0A:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/or;->A0A:I

    if-ne v1, v0, :cond_1

    :cond_0
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/or;->A0N:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/or;->A0N:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    .line 4129
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4a;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 4130
    :goto_0
    return v0

    .line 4131
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A1X()V
    .locals 4

    .line 4132
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/14;->A1X()V

    .line 4133
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A09:I

    .line 4134
    iput v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0A:I

    .line 4135
    iput v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0B:I

    .line 4136
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0J:J

    .line 4137
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/0O;->A0P:J

    .line 4138
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0w:Z

    if-eqz v0, :cond_0

    .line 4139
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0s:Lcom/facebook/ads/redexgen/X/FV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FV;->A0D()V

    .line 4140
    :cond_0
    return-void
.end method

.method public final A1Y()V
    .locals 2

    .line 4141
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0M:J

    .line 4142
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0O;->A0J()V

    .line 4143
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0O;->A0H()V

    .line 4144
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0w:Z

    if-eqz v0, :cond_0

    .line 4145
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0s:Lcom/facebook/ads/redexgen/X/FV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FV;->A0E()V

    .line 4146
    :cond_0
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/14;->A1Y()V

    .line 4147
    return-void
.end method

.method public final A1Z()V
    .locals 3

    .line 4148
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A08:I

    .line 4149
    iput v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A06:I

    .line 4150
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A01:F

    .line 4151
    iput v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A02:F

    .line 4152
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0R:J

    .line 4153
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0O:J

    .line 4154
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0C:I

    .line 4155
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0O;->A0F()V

    .line 4156
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0O;->A0E()V

    .line 4157
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0t:Lcom/facebook/ads/redexgen/X/FY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FY;->A08()V

    .line 4158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A00:Lcom/facebook/ads/redexgen/X/la;

    .line 4159
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0k:Z

    .line 4160
    iput v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0A:I

    .line 4161
    iput v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0B:I

    .line 4162
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0O;->A0G()V

    .line 4163
    :try_start_0
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/14;->A1Z()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4164
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A0j:Lcom/facebook/ads/redexgen/X/5g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5g;->A02()V

    .line 4165
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0u:Lcom/facebook/ads/redexgen/X/Fn;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A0j:Lcom/facebook/ads/redexgen/X/5g;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Fn;->A09(Lcom/facebook/ads/redexgen/X/5g;)V

    .line 4166
    return-void

    .line 4167
    :catchall_0
    move-exception v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A0j:Lcom/facebook/ads/redexgen/X/5g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5g;->A02()V

    .line 4168
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0u:Lcom/facebook/ads/redexgen/X/Fn;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A0j:Lcom/facebook/ads/redexgen/X/5g;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Fn;->A09(Lcom/facebook/ads/redexgen/X/5g;)V

    .line 4169
    throw v2
.end method

.method public final A1a(JZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 4170
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/14;->A1a(JZ)V

    .line 4171
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FC;->A0G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4172
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FC;->A09()V

    const/4 v0, 0x0

    throw v0

    .line 4173
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0O;->A0E()V

    .line 4174
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0w:Z

    if-eqz v0, :cond_1

    .line 4175
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0s:Lcom/facebook/ads/redexgen/X/FV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FV;->A0C()V

    .line 4176
    :cond_1
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/0O;->A0N:J

    .line 4177
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/0O;->A0L:J

    .line 4178
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/0O;->A0O:J

    .line 4179
    const/4 v4, 0x0

    iput v4, p0, Lcom/facebook/ads/redexgen/X/0O;->A0A:I

    .line 4180
    iput v4, p0, Lcom/facebook/ads/redexgen/X/0O;->A0B:I

    .line 4181
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0C:I

    if-eqz v0, :cond_2

    .line 4182
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0x:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0C:I

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, v1, v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0R:J

    .line 4183
    iput v4, p0, Lcom/facebook/ads/redexgen/X/0O;->A0C:I

    .line 4184
    :cond_2
    if-eqz p3, :cond_3

    .line 4185
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0O;->A0N()V

    .line 4186
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0O;->A0H()V

    .line 4187
    return-void

    .line 4188
    :cond_3
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/0O;->A0M:J

    goto :goto_0
.end method

.method public final A1b(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 4189
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/14;->A1b(ZZ)V

    .line 4190
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9Z;->A1V()Lcom/facebook/ads/redexgen/X/7G;

    move-result-object v0

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/7G;->A00:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0k:Z

    .line 4191
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0u:Lcom/facebook/ads/redexgen/X/Fn;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A0j:Lcom/facebook/ads/redexgen/X/5g;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Fn;->A0A(Lcom/facebook/ads/redexgen/X/5g;)V

    .line 4192
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0t:Lcom/facebook/ads/redexgen/X/FY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FY;->A09()V

    .line 4193
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/0O;->A0g:Z

    .line 4194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0j:Z

    .line 4195
    return-void
.end method

.method public final A1c([Lcom/facebook/ads/redexgen/X/or;JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 4196
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/0O;->A0R:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 4197
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/0O;->A0R:J

    .line 4198
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/14;->A1c([Lcom/facebook/ads/redexgen/X/or;JJ)V

    .line 4199
    return-void

    .line 4200
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0C:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0x:[J

    array-length v0, v0

    if-ne v1, v0, :cond_1

    .line 4201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x42d

    const/16 v1, 0x2d

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0x:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0C:I

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, v1, v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x2aa

    const/16 v1, 0x17

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 4202
    :goto_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/0O;->A0x:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0C:I

    add-int/lit8 v3, v0, -0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 4203
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0C:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0C:I

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v1, "SAUgnWkYDj4XEzprgfj9YLgtcmW5pkCR"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    aput-wide p4, v4, v3

    .line 4204
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/0O;->A0y:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0C:I

    add-int/lit8 v2, v0, -0x1

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0O:J

    aput-wide v0, v3, v2

    goto :goto_0
.end method

.method public final A1g(Lcom/facebook/ads/redexgen/X/AO;Lcom/facebook/ads/redexgen/X/AR;Lcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/or;)I
    .locals 5

    .line 4205
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/14;->A11:Lcom/facebook/ads/redexgen/X/hv;

    iget v3, p3, Lcom/facebook/ads/redexgen/X/or;->A0L:I

    iget v2, p3, Lcom/facebook/ads/redexgen/X/or;->A0A:I

    iget v1, p4, Lcom/facebook/ads/redexgen/X/or;->A0L:I

    iget v0, p4, Lcom/facebook/ads/redexgen/X/or;->A0A:I

    invoke-static {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hY;->A04(Lcom/facebook/ads/redexgen/X/hv;IIII)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 4206
    return v2

    .line 4207
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/14;->A21()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    iget-object v1, p3, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    .line 4208
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v1, p3, Lcom/facebook/ads/redexgen/X/or;->A0F:I

    iget v0, p4, Lcom/facebook/ads/redexgen/X/or;->A0F:I

    if-ne v1, v0, :cond_1

    .line 4209
    return v4

    .line 4210
    :cond_1
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/AR;->A04:Z

    invoke-static {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/0O;->A0v(ZLcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/or;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v1, p4, Lcom/facebook/ads/redexgen/X/or;->A0L:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0W:Lcom/facebook/ads/redexgen/X/FA;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/FA;->A02:I

    if-gt v1, v0, :cond_4

    iget v1, p4, Lcom/facebook/ads/redexgen/X/or;->A0A:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0W:Lcom/facebook/ads/redexgen/X/FA;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/FA;->A00:I

    if-gt v1, v0, :cond_4

    .line 4211
    invoke-direct {p0, p4}, Lcom/facebook/ads/redexgen/X/0O;->A00(Lcom/facebook/ads/redexgen/X/or;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0W:Lcom/facebook/ads/redexgen/X/FA;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/FA;->A01:I

    if-gt v1, v0, :cond_4

    .line 4212
    invoke-virtual {p3, p4}, Lcom/facebook/ads/redexgen/X/or;->A0A(Lcom/facebook/ads/redexgen/X/or;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v1, "4hDLfGBXu2jWhDFi4VyshDOfpKmyRTIF"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    :goto_0
    return v4

    .line 4213
    :cond_2
    const/4 v4, 0x3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 4214
    :cond_4
    return v2
.end method

.method public final A1h(Lcom/facebook/ads/redexgen/X/Ar;Lcom/facebook/ads/redexgen/X/9U;Lcom/facebook/ads/redexgen/X/or;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Av;
        }
    .end annotation

    .line 4215
    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/14;->A24(Lcom/facebook/ads/redexgen/X/or;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4216
    const/16 v0, 0x14

    return v0

    .line 4217
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/14;->A0l:Z

    invoke-static {p1, p3, v0}, Lcom/facebook/ads/redexgen/X/0O;->A01(Lcom/facebook/ads/redexgen/X/Ar;Lcom/facebook/ads/redexgen/X/or;Z)I

    move-result v0

    return v0
.end method

.method public final A1l(Lcom/facebook/ads/redexgen/X/Ar;Lcom/facebook/ads/redexgen/X/or;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Ar;",
            "Lcom/facebook/ads/redexgen/X/or;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/AR;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Av;
        }
    .end annotation

    .line 4218
    invoke-static {p1, p2, p3}, Lcom/facebook/ads/redexgen/X/0O;->A0D(Lcom/facebook/ads/redexgen/X/Ar;Lcom/facebook/ads/redexgen/X/or;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final A1m()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 4219
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/14;->A1m()V

    .line 4220
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A04:I

    .line 4221
    return-void
.end method

.method public final A1n()V
    .locals 4

    .line 4222
    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/14;->A1n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4223
    iput v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A04:I

    .line 4224
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0T:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 4225
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0U:Landroid/view/Surface;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0T:Landroid/view/Surface;

    if-ne v1, v0, :cond_0

    .line 4226
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/0O;->A0U:Landroid/view/Surface;

    .line 4227
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0T:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_2

    .line 4228
    sget-object v2, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v1, "7lrYh0KktVrYvVNtOiQ9Yi2M4ixXH9PV"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "rg1WGkW3vr4OYC0nZllkbznbWLz7shBk"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/0O;->A0T:Landroid/view/Surface;

    .line 4229
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 4230
    :catchall_0
    move-exception v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A04:I

    .line 4231
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0T:Landroid/view/Surface;

    if-eqz v0, :cond_4

    .line 4232
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0U:Landroid/view/Surface;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0T:Landroid/view/Surface;

    if-ne v1, v0, :cond_3

    .line 4233
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/0O;->A0U:Landroid/view/Surface;

    .line 4234
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0T:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 4235
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/0O;->A0T:Landroid/view/Surface;

    .line 4236
    :cond_4
    throw v2
.end method

.method public final A1q(J)V
    .locals 5

    .line 4237
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/14;->A1q(J)V

    .line 4238
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A04:I

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A04:I

    .line 4239
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0C:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0y:[J

    const/4 v3, 0x0

    aget-wide v1, v0, v3

    cmp-long v0, p1, v1

    if-ltz v0, :cond_0

    .line 4240
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0x:[J

    aget-wide v0, v0, v3

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0R:J

    .line 4241
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0C:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0C:I

    .line 4242
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/0O;->A0x:[J

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0x:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0C:I

    invoke-static {v2, v4, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4243
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/0O;->A0y:[J

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0y:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0C:I

    invoke-static {v2, v4, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 4244
    :cond_0
    return-void
.end method

.method public final A1r(Lcom/facebook/ads/redexgen/X/or;)V
    .locals 5
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "for SR video effects support of MCM"
    .end annotation

    .line 4245
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/14;->A24(Lcom/facebook/ads/redexgen/X/or;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 4246
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A0i:Lcom/facebook/ads/redexgen/X/or;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A0i:Lcom/facebook/ads/redexgen/X/or;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    .line 4247
    const/16 v2, 0x66d

    const/16 v1, 0xa

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4248
    .local v0, "isSwitchingToDav1d":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FC;->A0G()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4249
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FC;->A0A()V

    const/4 v0, 0x0

    throw v0

    .line 4250
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4251
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/FC;->A05(Lcom/facebook/ads/redexgen/X/FC;Z)Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_2

    .line 4252
    sget-object v2, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v1, "sIGbpbi"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "eroBYPH"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 4253
    .end local v0    # "isSwitchingToDav1d":Z
    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/i3;->A09:Lcom/facebook/ads/redexgen/X/i3;

    .line 4254
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/i5;->A00(Lcom/facebook/ads/redexgen/X/i3;)I

    move-result v1

    .line 4255
    .local v0, "videoWidthToEnableSR":I
    if-lez v1, :cond_4

    if-eqz p1, :cond_4

    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0L:I

    if-le v0, v1, :cond_4

    .line 4256
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/FC;->A05(Lcom/facebook/ads/redexgen/X/FC;Z)Z

    .line 4257
    :cond_4
    return-void
.end method

.method public final A1s(Lcom/facebook/ads/redexgen/X/or;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 4258
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/14;->A1s(Lcom/facebook/ads/redexgen/X/or;)V

    .line 4259
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0u:Lcom/facebook/ads/redexgen/X/Fn;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Fn;->A05(Lcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/5j;)V

    .line 4260
    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A02:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A02:F

    .line 4261
    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0F:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0D:I

    .line 4262
    return-void
.end method

.method public final A1t(Lcom/facebook/ads/redexgen/X/or;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 4263
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FC;->A0G()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4264
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/14;->A1i()J

    move-result-wide v0

    invoke-virtual {v2, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/FC;->A0J(Lcom/facebook/ads/redexgen/X/or;J)Z

    .line 4265
    :cond_0
    return-void
.end method

.method public final A1u(Lcom/facebook/ads/redexgen/X/nY;)V
    .locals 4

    .line 4266
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A04:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A04:I

    .line 4267
    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/nY;->A01:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0O:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0O:J

    .line 4268
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x17

    if-ge v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0k:Z

    if-eqz v0, :cond_0

    .line 4269
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0O;->A27()V

    .line 4270
    :cond_0
    return-void
.end method

.method public final A1v(Lcom/facebook/ads/redexgen/X/AO;Landroid/media/MediaFormat;)V
    .locals 8

    .line 4271
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/0O;->A0S:Landroid/media/MediaFormat;

    .line 4272
    .local v0, "unappliedRotationDegrees":I
    const/16 v2, 0x4cd

    const/16 v1, 0xa

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const/16 v2, 0x4d7

    const/16 v1, 0x8

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x4b9

    const/16 v1, 0xb

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0x4c4

    const/16 v1, 0x9

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    .line 4273
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4274
    invoke-virtual {p2, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4275
    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    .line 4276
    .local v2, "hasCrop":Z
    :goto_0
    if-eqz v3, :cond_4

    .line 4277
    invoke-virtual {p2, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v1, v0

    add-int/2addr v1, v4

    .line 4278
    :goto_1
    iput v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A08:I

    .line 4279
    if-eqz v3, :cond_3

    .line 4280
    invoke-virtual {p2, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v1, v0

    add-int/2addr v1, v4

    .line 4281
    :goto_2
    iput v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A06:I

    .line 4282
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A02:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A01:F

    .line 4283
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_2

    .line 4284
    iget v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0D:I

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0D:I

    const/16 v0, 0x10e

    if-ne v1, v0, :cond_1

    .line 4285
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A08:I

    .line 4286
    .local v1, "rotatedHeight":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A06:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A08:I

    .line 4287
    iput v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A06:I

    .line 4288
    const/high16 v1, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A01:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A01:F

    .line 4289
    .end local v1    # "rotatedHeight":I
    :cond_1
    :goto_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0H:I

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/AO;->AJ8(I)V

    .line 4290
    iget v4, p0, Lcom/facebook/ads/redexgen/X/0O;->A08:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/0O;->A06:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/0O;->A07:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A01:F

    new-instance v0, Lcom/facebook/ads/redexgen/X/o4;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/o4;-><init>(IIIF)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0V:Lcom/facebook/ads/redexgen/X/o4;

    .line 4291
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0s:Lcom/facebook/ads/redexgen/X/FV;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A0i:Lcom/facebook/ads/redexgen/X/or;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/or;->A01:F

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FV;->A0F(F)V

    .line 4292
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FC;->A0G()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4293
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A0i:Lcom/facebook/ads/redexgen/X/or;

    .line 4294
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/or;->A07()Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A08:I

    .line 4295
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0r(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A06:I

    .line 4296
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0f(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A07:I

    .line 4297
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0l(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A01:F

    .line 4298
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0Y(F)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 4299
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A14()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    .line 4300
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/FC;->A0D(Lcom/facebook/ads/redexgen/X/or;)V

    const/4 v0, 0x0

    throw v0

    .line 4301
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FC;->A0G()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4302
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0D:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A07:I

    goto :goto_3

    .line 4303
    :cond_3
    const/16 v2, 0x51b

    const/4 v1, 0x6

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_2

    .line 4304
    :cond_4
    const/16 v2, 0x6db

    const/4 v1, 0x5

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_1

    .line 4305
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 4306
    :cond_6
    return-void
.end method

.method public final A1w(Lcom/facebook/ads/redexgen/X/AR;Lcom/facebook/ads/redexgen/X/AO;Lcom/facebook/ads/redexgen/X/or;Landroid/media/MediaCrypto;)V
    .locals 13
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomizations;
        value = {
            .subannotation Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
                value = "D40834768: [FBLite][Video] Enable low latency decoding for older Android versions"
            .end subannotation,
            .subannotation Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
                type = {
                    "TEMPORARY"
                }
                value = "Google Platform Dav1d Testing with Low Latency Decoding D62649046"
            .end subannotation
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Av;
        }
    .end annotation

    .line 4307
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9Z;->A1e()[Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    move-object/from16 v3, p3

    invoke-direct {p0, p1, v3, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0A(Lcom/facebook/ads/redexgen/X/AR;Lcom/facebook/ads/redexgen/X/or;[Lcom/facebook/ads/redexgen/X/or;)Lcom/facebook/ads/redexgen/X/FA;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0W:Lcom/facebook/ads/redexgen/X/FA;

    .line 4308
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/0O;->A0W:Lcom/facebook/ads/redexgen/X/FA;

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0v:Z

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0o:I

    .line 4309
    invoke-direct {p0, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A08(Lcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/FA;ZI)Landroid/media/MediaFormat;

    move-result-object v8

    .line 4310
    .local v0, "mediaFormat":Landroid/media/MediaFormat;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0U:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 4311
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/0O;->A0r(Lcom/facebook/ads/redexgen/X/AR;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 4312
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0T:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 4313
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/0O;->A0q:Landroid/content/Context;

    iget-boolean v3, p1, Lcom/facebook/ads/redexgen/X/AR;->A06:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_c

    sget-object v2, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v1, "yiNR3QranPnEQfiPRrhMyH37rGbgy01y"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v4, v3}, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A01(Landroid/content/Context;Z)Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0T:Landroid/view/Surface;

    .line 4314
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/0O;->A0T:Landroid/view/Surface;

    sget-object v1, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_c

    sget-object v2, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v1, "LRboFGG"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "hwnKdFV"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/0O;->A0U:Landroid/view/Surface;

    .line 4315
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A11:Lcom/facebook/ads/redexgen/X/hv;

    iget-boolean v5, v0, Lcom/facebook/ads/redexgen/X/hv;->A0H:Z

    const/4 v7, 0x0

    const/16 v2, 0x56e

    const/16 v1, 0xb

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x1

    if-eqz v5, :cond_7

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/AR;->A00:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/AR;->A00:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 4316
    invoke-virtual {v0, v4}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v6, 0x1

    .line 4317
    .local v1, "isLowLatencyDecodingSupported":Z
    :goto_0
    iget-object v5, p1, Lcom/facebook/ads/redexgen/X/AR;->A03:Ljava/lang/String;

    .line 4318
    const/16 v2, 0x49d

    const/16 v1, 0x1c

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A11:Lcom/facebook/ads/redexgen/X/hv;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/hv;->A09:Z

    if-eqz v0, :cond_2

    const/4 v7, 0x1

    .line 4319
    .local v2, "disableLowLatencyDecodingForPlatformDav1d":Z
    :cond_2
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x1e

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A11:Lcom/facebook/ads/redexgen/X/hv;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/hv;->A0I:Z

    if-eqz v0, :cond_4

    :cond_3
    if-eqz v6, :cond_4

    if-nez v7, :cond_4

    .line 4320
    invoke-virtual {v8, v4, v3}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    .line 4321
    sget-object v2, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v1, "hfJ3VMX"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "92OmzWl"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v8, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4322
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FC;->A0G()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/FC;->A06(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    move-result-object v8

    .line 4324
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FC;->A0G()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4325
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    sget-object v2, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_8

    .line 4326
    sget-object v2, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v1, "vjf6uovaHCWDHHkpYfphkXQkMzg9bbjD"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "sOVWNDiAOc7Hvgm0kOVhLN9DKu4y3eSs"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/FC;->A07()Landroid/view/Surface;

    const/4 v0, 0x0

    throw v0

    .line 4327
    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v1, "U57WE1Icqa5Z"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v8, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_1

    .line 4328
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 4329
    :cond_9
    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/0O;->A0U:Landroid/view/Surface;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/facebook/ads/redexgen/X/0O;->A0Y:Ljava/lang/Object;

    move-object/from16 v10, p4

    move-object v7, p2

    invoke-interface/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/AO;->A50(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;ILjava/lang/Object;)V

    .line 4330
    sget v3, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_b

    sget-object v2, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v1, "mXryJuZr86dScF3AeNkyss5tnbfSKjka"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/16 v0, 0x17

    if-lt v3, v0, :cond_a

    :goto_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0k:Z

    if-eqz v0, :cond_a

    .line 4331
    new-instance v0, Lcom/facebook/ads/redexgen/X/la;

    invoke-direct {v0, p0, v7}, Lcom/facebook/ads/redexgen/X/la;-><init>(Lcom/facebook/ads/redexgen/X/0O;Lcom/facebook/ads/redexgen/X/AO;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A00:Lcom/facebook/ads/redexgen/X/la;

    .line 4332
    :cond_a
    return-void

    :cond_b
    sget-object v2, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v1, "iNbmoOXFYL62OfUeH4JwG1appoAFSKUM"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/16 v0, 0x15

    if-lt v3, v0, :cond_a

    goto :goto_2

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A1x(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "D45988204: [FBLite][Video] Add Codec Hooks for Logging"
    .end annotation

    .line 4333
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0u:Lcom/facebook/ads/redexgen/X/Fn;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Fn;->A0F(Ljava/lang/String;)V

    .line 4334
    return-void
.end method

.method public final A1y(Ljava/lang/String;JJ)V
    .locals 9

    .line 4335
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/0O;->A0u:Lcom/facebook/ads/redexgen/X/Fn;

    move-wide v7, p4

    move-wide v5, p2

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/Fn;->A0G(Ljava/lang/String;JJ)V

    .line 4336
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/0O;->A0u(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0b:Z

    .line 4337
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0w:Z

    if-eqz v0, :cond_1

    .line 4338
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    sget-object v1, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v1, "TMyTJm2xfuZjG3FrE9xxFPlKyVDcqwcD"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "gYDTbLVVgSlIu0qIAiA5ri17AONkCNH7"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/FC;->A0E(Ljava/lang/String;)V

    .line 4339
    :cond_1
    return-void
.end method

.method public final A1z(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/or;)V
    .locals 3
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "TEMPORARY"
        }
        value = "D60404164: Merge init calls in the renderer"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 4340
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0u:Lcom/facebook/ads/redexgen/X/Fn;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Fn;->A0F(Ljava/lang/String;)V

    .line 4341
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FC;->A0G()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4342
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/14;->A1i()J

    move-result-wide v0

    invoke-virtual {v2, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/FC;->A0J(Lcom/facebook/ads/redexgen/X/or;J)Z

    .line 4343
    :cond_0
    return-void
.end method

.method public final A20()Z
    .locals 5

    .line 4344
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0a:Z

    if-eqz v0, :cond_0

    .line 4345
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0Q:J

    sub-long/2addr v3, v0

    const-wide/16 v1, 0x1f4

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 4346
    :goto_0
    return v0

    .line 4347
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A22()Z
    .locals 1

    .line 4348
    const/4 v0, 0x1

    return v0
.end method

.method public final A23(JJLcom/facebook/ads/redexgen/X/AO;Ljava/nio/ByteBuffer;IIJZZ)Z
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 4349
    move-wide/from16 v2, p9

    move-object/from16 v8, p0

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/0O;->A0I()V

    .line 4350
    iget-wide v4, v8, Lcom/facebook/ads/redexgen/X/0O;->A0L:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    move-wide/from16 v4, p1

    if-nez v0, :cond_0

    .line 4351
    iput-wide v4, v8, Lcom/facebook/ads/redexgen/X/0O;->A0L:J

    .line 4352
    :cond_0
    iget-wide v0, v8, Lcom/facebook/ads/redexgen/X/0O;->A0N:J

    cmp-long v9, v2, v0

    if-eqz v9, :cond_2

    .line 4353
    iget-object v10, v8, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    sget-object v9, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v9, v0

    const/4 v0, 0x7

    aget-object v9, v9, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_12

    sget-object v9, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v1, "L0kRAN56GCoM9aTEFIfEof2AhWTAPhww"

    const/4 v0, 0x6

    aput-object v1, v9, v0

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/FC;->A0G()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4354
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/0O;->A0s:Lcom/facebook/ads/redexgen/X/FV;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/FV;->A0G(J)V

    .line 4355
    :cond_1
    iput-wide v2, v8, Lcom/facebook/ads/redexgen/X/0O;->A0N:J

    .line 4356
    :cond_2
    iget-wide v9, v8, Lcom/facebook/ads/redexgen/X/0O;->A0R:J

    sub-long v0, v2, v9

    .line 4357
    .local v2, "presentationTimeUs":J
    const/4 v9, 0x1

    move/from16 v13, p7

    move-object/from16 v15, p5

    if-eqz p11, :cond_3

    .line 4358
    invoke-direct {v8, v15, v13, v0, v1}, Lcom/facebook/ads/redexgen/X/0O;->A0Z(Lcom/facebook/ads/redexgen/X/AO;IJ)V

    .line 4359
    iput-wide v6, v8, Lcom/facebook/ads/redexgen/X/0O;->A0K:J

    .line 4360
    return v9

    .line 4361
    :cond_3
    sub-long v6, v2, v4

    .line 4362
    .local v4, "earlyUs":J
    iget-object v10, v8, Lcom/facebook/ads/redexgen/X/0O;->A0U:Landroid/view/Surface;

    iget-object v9, v8, Lcom/facebook/ads/redexgen/X/0O;->A0T:Landroid/view/Surface;

    const/16 v22, 0x0

    if-ne v10, v9, :cond_5

    .line 4363
    invoke-static {v6, v7}, Lcom/facebook/ads/redexgen/X/0O;->A0k(J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4364
    invoke-direct {v8, v15, v13, v0, v1}, Lcom/facebook/ads/redexgen/X/0O;->A0Z(Lcom/facebook/ads/redexgen/X/AO;IJ)V

    .line 4365
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, v8, Lcom/facebook/ads/redexgen/X/0O;->A0K:J

    .line 4366
    const/4 v0, 0x1

    return v0

    .line 4367
    :cond_4
    return v22

    .line 4368
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    const-wide/16 v20, 0x3e8

    mul-long v16, v16, v20

    .line 4369
    .local v16, "elapsedRealtimeNowUs":J
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/9Z;->A92()I

    move-result v10

    const/4 v9, 0x2

    if-ne v10, v9, :cond_8

    const/4 v14, 0x1

    .line 4370
    .local v23, "isStarted":Z
    :goto_0
    iget-boolean v9, v8, Lcom/facebook/ads/redexgen/X/0O;->A0i:Z

    move/from16 v23, p12

    if-eqz v9, :cond_7

    if-eqz v14, :cond_e

    .end local v2    # "presentationTimeUs":J
    .local v24, "presentationTimeUs":J
    iget-wide v11, v8, Lcom/facebook/ads/redexgen/X/0O;->A0P:J

    sub-long v9, v16, v11

    .line 4371
    invoke-direct {v8, v6, v7, v9, v10}, Lcom/facebook/ads/redexgen/X/0O;->A0p(JJ)Z

    move-result v9

    if-eqz v9, :cond_e

    const/16 v5, 0x15

    sget-object v4, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v3, v4, v2

    const/4 v2, 0x7

    aget-object v4, v4, v2

    const/16 v2, 0x17

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v3, v2, :cond_d

    sget-object v4, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v3, "Ca6wrlcfbPJTUKGkRuSnscA1gW8xLMZW"

    const/4 v2, 0x1

    aput-object v3, v4, v2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4372
    .end local v2
    .restart local v10
    :goto_1
    iget-object v4, v8, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/FC;->A0G()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 4373
    .local v1, "notifyFrameMetaDataListener":Z
    iget-object v5, v8, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    iget-object v6, v8, Lcom/facebook/ads/redexgen/X/14;->A0i:Lcom/facebook/ads/redexgen/X/or;

    sget-object v3, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v3, v3, v2

    const/16 v2, 0x1d

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x78

    if-eq v3, v2, :cond_6

    sget-object v4, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v3, "ALWZkOReLcoODcDx9aoBhmHDBkFgQP5j"

    const/4 v2, 0x6

    aput-object v3, v4, v2

    move/from16 v2, v23

    invoke-virtual {v5, v6, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/FC;->A0K(Lcom/facebook/ads/redexgen/X/or;JZ)Z

    :goto_2
    const/4 v0, 0x0

    throw v0

    :cond_6
    sget-object v4, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v3, "ZbZVwQDkp8zHMkP4lXo6fzwP4kG7"

    const/4 v2, 0x3

    aput-object v3, v4, v2

    move/from16 v2, v23

    invoke-virtual {v5, v6, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/FC;->A0K(Lcom/facebook/ads/redexgen/X/or;JZ)Z

    goto :goto_2

    .line 4374
    .end local v10
    .local v2, "presentationTimeUs":J
    :cond_7
    const/16 v5, 0x15

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1

    .line 4375
    :cond_8
    const/4 v14, 0x0

    goto :goto_0

    .line 4376
    .end local v1    # "notifyFrameMetaDataListener":Z
    :cond_9
    const/16 v21, 0x1

    .line 4377
    .local v19, "notifyFrameMetaDataListener":Z
    sget v4, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    if-lt v4, v5, :cond_b

    .line 4378
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v19

    .line 4379
    move-object/from16 v14, p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v4    # "earlyUs":J
    .local v24, "earlyUs":J
    :try_start_1
    move/from16 v16, v13

    move-wide/from16 v17, v0

    move-object v15, v15

    invoke-direct/range {v14 .. v21}, Lcom/facebook/ads/redexgen/X/0O;->A0b(Lcom/facebook/ads/redexgen/X/AO;IJJZ)V

    goto :goto_4
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4380
    :catch_0
    move-exception v1

    goto :goto_3

    .end local v24    # "earlyUs":J
    .restart local v4    # "earlyUs":J
    :catch_1
    move-exception v1

    .line 4381
    .end local v4    # "earlyUs":J
    .restart local v0
    .restart local v24    # "earlyUs":J
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/0O;->A0g()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4382
    return v22

    .line 4383
    :cond_a
    throw v1

    .line 4384
    .end local v4
    .restart local v24    # "earlyUs":J
    :cond_b
    :try_start_2
    invoke-direct {v8, v15, v13, v0, v1}, Lcom/facebook/ads/redexgen/X/0O;->A0X(Lcom/facebook/ads/redexgen/X/AO;IJ)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4385
    :goto_4
    iput-wide v2, v8, Lcom/facebook/ads/redexgen/X/0O;->A0K:J

    .line 4386
    const/4 v0, 0x1

    return v0

    .line 4387
    :catch_2
    move-exception v1

    .line 4388
    .restart local v0
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/0O;->A0g()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4389
    return v22

    .line 4390
    :cond_c
    throw v1

    .line 4391
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 4392
    .end local v2    # "presentationTimeUs":J
    .restart local v24    # "earlyUs":J
    :cond_e
    if-eqz v14, :cond_f

    iget-wide v9, v8, Lcom/facebook/ads/redexgen/X/0O;->A0L:J

    cmp-long v11, v4, v9

    if-nez v11, :cond_10

    .line 4393
    .end local v24    # "earlyUs":J
    .restart local v10
    :cond_f
    return v22

    .line 4394
    :cond_10
    move-wide/from16 v9, p3

    sub-long v16, v16, v9

    .line 4395
    .local v26, "elapsedSinceStartOfLoopUs":J
    sub-long v6, v6, v16

    .line 4396
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    .line 4397
    .local v28, "systemTimeNs":J
    mul-long v16, v6, v20

    add-long v11, v18, v16

    .line 4398
    .local v2, "unadjustedFrameReleaseTimeNs":J
    iget-object v14, v8, Lcom/facebook/ads/redexgen/X/0O;->A0t:Lcom/facebook/ads/redexgen/X/FY;

    .line 4399
    invoke-virtual {v14, v2, v3, v11, v12}, Lcom/facebook/ads/redexgen/X/FY;->A07(JJ)J

    move-result-wide v28

    .line 4400
    .local v30, "adjustedReleaseTimeNs":J
    iget-object v11, v8, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/FC;->A0G()Z

    move-result v11

    if-nez v11, :cond_11

    .line 4401
    sub-long v6, v28, v18

    sget-object v12, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v12, v12, v11

    const/16 v11, 0x14

    invoke-virtual {v12, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v11, 0x73

    if-eq v12, v11, :cond_13

    sget-object v14, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v12, "i4qTewa8ZWbDA8s4kXcKcwjveHudTAS9"

    const/4 v11, 0x6

    aput-object v12, v14, v11

    div-long v6, v6, v20

    .line 4402
    :cond_11
    :goto_5
    invoke-direct {v8, v6, v7, v9, v10}, Lcom/facebook/ads/redexgen/X/0O;->A0n(JJ)Z

    move-result v16

    sget-object v14, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v11, 0x5

    aget-object v12, v14, v11

    const/4 v11, 0x0

    aget-object v11, v14, v11

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eq v12, v11, :cond_14

    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_13
    sget-object v14, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v12, "gEfAYqDTponyW9gbewcXscS7fdpN1mCh"

    const/4 v11, 0x1

    aput-object v12, v14, v11

    div-long v6, v6, v20

    goto :goto_5

    :cond_14
    sget-object v14, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v12, "x3sCqHu2x6JsDcuqwdAUHQ0k2SaVNxNE"

    const/4 v11, 0x4

    aput-object v12, v14, v11

    const-string v12, "ynqO8npVIpgyPmtNsd5sQ1b1Keqzobw0"

    const/4 v11, 0x7

    aput-object v12, v14, v11

    if-eqz v16, :cond_16

    .line 4403
    const/16 v12, 0x15

    sget-object v14, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v11, 0x3

    aget-object v11, v14, v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v11, 0x15

    if-eq v14, v11, :cond_15

    sget-object v16, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v14, "Im0K8TG4eXiLHobEoWn7h9VZsIuUdU0F"

    const/4 v11, 0x2

    aput-object v14, v16, v11

    move-object/from16 v30, p0

    .end local v2    # "unadjustedFrameReleaseTimeNs":J
    .local v24, "unadjustedFrameReleaseTimeNs":J
    .local v32, "presentationTimeUs":J
    move-object/from16 v31, v15

    move/from16 v32, v13

    .end local v4
    .local v10, "earlyUs":J
    move-wide/from16 v33, v0

    move-wide/from16 v35, v4

    invoke-direct/range {v30 .. v36}, Lcom/facebook/ads/redexgen/X/0O;->A0q(Lcom/facebook/ads/redexgen/X/AO;IJJ)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 4404
    :goto_6
    return v22

    :cond_15
    sget-object v16, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v14, "TqRORNfXADShgAM6oQQosmDa9t1KVXi2"

    const/4 v11, 0x1

    aput-object v14, v16, v11

    move-object/from16 v30, p0

    .end local v2
    .local v24, "unadjustedFrameReleaseTimeNs":J
    .local v32, "presentationTimeUs":J
    move-object/from16 v31, v15

    move/from16 v32, v13

    .end local v4
    .local v10, "earlyUs":J
    move-wide/from16 v33, v0

    move-wide/from16 v35, v4

    invoke-direct/range {v30 .. v36}, Lcom/facebook/ads/redexgen/X/0O;->A0q(Lcom/facebook/ads/redexgen/X/AO;IJJ)Z

    move-result v11

    if-eqz v11, :cond_17

    goto :goto_6

    .line 4405
    .end local v10    # "earlyUs":J
    .end local v32    # "presentationTimeUs":J
    .restart local v2    # "unadjustedFrameReleaseTimeNs":J
    .restart local v4    # "earlyUs":J
    .local v24, "presentationTimeUs":J
    :cond_16
    const/16 v12, 0x15

    .line 4406
    .end local v2    # "unadjustedFrameReleaseTimeNs":J
    .end local v4    # "earlyUs":J
    .restart local v10    # "earlyUs":J
    .local v24, "unadjustedFrameReleaseTimeNs":J
    .restart local v32    # "presentationTimeUs":J
    :cond_17
    invoke-direct {v8, v6, v7, v9, v10}, Lcom/facebook/ads/redexgen/X/0O;->A0o(JJ)Z

    move-result v17

    sget-object v14, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v14, v14, v11

    const/16 v11, 0x14

    invoke-virtual {v14, v11}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v11, 0x73

    if-eq v14, v11, :cond_18

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_18
    sget-object v16, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v14, "PbABcFTeATAG8BdJ5MobsRcJEcYTdsNJ"

    const/4 v11, 0x1

    aput-object v14, v16, v11

    if-eqz v17, :cond_19

    .line 4407
    .end local v32    # "presentationTimeUs":J
    .local v5, "presentationTimeUs":J
    invoke-direct {v8, v15, v13, v0, v1}, Lcom/facebook/ads/redexgen/X/0O;->A0W(Lcom/facebook/ads/redexgen/X/AO;IJ)V

    .line 4408
    const/4 v0, 0x1

    return v0

    .line 4409
    .end local v5    # "presentationTimeUs":J
    .restart local v32    # "presentationTimeUs":J
    .end local v32    # "presentationTimeUs":J
    .restart local v5    # "presentationTimeUs":J
    :cond_19
    iget-object v11, v8, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/FC;->A0G()Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 4410
    iget-object v7, v8, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    sget-object v3, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v3, v3, v2

    const/16 v2, 0x14

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x73

    if-eq v3, v2, :cond_1a

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1a
    sget-object v6, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v3, "xPxknUi3OsFzLFKEvylwNjXsMhIdmdKw"

    const/4 v2, 0x6

    aput-object v3, v6, v2

    .end local v10    # "earlyUs":J
    .local v21, "earlyUs":J
    invoke-virtual {v7, v4, v5, v9, v10}, Lcom/facebook/ads/redexgen/X/FC;->A0B(JJ)V

    .line 4411
    iget-object v4, v8, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    iget-object v3, v8, Lcom/facebook/ads/redexgen/X/14;->A0i:Lcom/facebook/ads/redexgen/X/or;

    move/from16 v2, v23

    invoke-virtual {v4, v3, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/FC;->A0K(Lcom/facebook/ads/redexgen/X/or;JZ)Z

    const/4 v0, 0x0

    throw v0

    .line 4412
    .end local v21    # "earlyUs":J
    .restart local v10    # "earlyUs":J
    .end local v5    # "presentationTimeUs":J
    .end local v10    # "earlyUs":J
    .restart local v21    # "earlyUs":J
    .restart local v32    # "presentationTimeUs":J
    :cond_1b
    sget v9, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    if-lt v9, v12, :cond_1e

    .line 4413
    const-wide/32 v11, 0xc350

    cmp-long v10, v6, v11

    sget-object v9, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v7, v9, v6

    const/4 v6, 0x7

    aget-object v9, v9, v6

    const/16 v6, 0x17

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v7, v6, :cond_1c

    sget-object v9, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v7, "ZYuml2WQS49YsB2SRefxlPdxR9rLTqpk"

    const/4 v6, 0x6

    aput-object v7, v9, v6

    if-gez v10, :cond_21

    .line 4414
    :goto_7
    move-object/from16 v23, p0

    goto :goto_8

    :cond_1c
    if-gez v10, :cond_21

    goto :goto_7

    :goto_8
    :try_start_3
    move/from16 v25, v13

    move-wide/from16 v26, v0

    move-object/from16 v24, v15

    invoke-direct/range {v23 .. v29}, Lcom/facebook/ads/redexgen/X/0O;->A0a(Lcom/facebook/ads/redexgen/X/AO;IJJ)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    .line 4415
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, v8, Lcom/facebook/ads/redexgen/X/0O;->A0K:J

    .line 4416
    const/4 v0, 0x1

    return v0

    .line 4417
    :catch_3
    move-exception v1

    .line 4418
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/0O;->A0g()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4419
    return v22

    .line 4420
    :cond_1d
    throw v1

    .line 4421
    :cond_1e
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v16, 0x7530

    cmp-long v11, v6, v16

    if-gez v11, :cond_21

    .line 4422
    const-wide/16 v3, 0x2af8

    cmp-long v2, v6, v3

    if-lez v2, :cond_1f

    .line 4423
    const-wide/16 v2, 0x2710

    sub-long/2addr v6, v2

    :try_start_4
    div-long v6, v6, v20

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_9
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    .line 4424
    .local v0, "e":Ljava/lang/InterruptedException;
    :catch_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 4425
    return v22

    .line 4426
    .end local v32    # "presentationTimeUs":J
    .local v4, "presentationTimeUs":J
    :cond_1f
    :goto_9
    :try_start_5
    invoke-direct {v8, v15, v13, v0, v1}, Lcom/facebook/ads/redexgen/X/0O;->A0X(Lcom/facebook/ads/redexgen/X/AO;IJ)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_5

    .line 4427
    iput-wide v9, v8, Lcom/facebook/ads/redexgen/X/0O;->A0K:J

    .line 4428
    const/4 v0, 0x1

    return v0

    .line 4429
    :catch_5
    move-exception v1

    .line 4430
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/0O;->A0g()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 4431
    return v22

    .line 4432
    :cond_20
    throw v1

    .line 4433
    .end local v32
    .restart local v4    # "presentationTimeUs":J
    :cond_21
    sub-long/2addr v2, v4

    .line 4434
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/14;->A0i:Lcom/facebook/ads/redexgen/X/or;

    iget v7, v0, Lcom/facebook/ads/redexgen/X/or;->A01:F

    const/high16 v9, -0x40800000    # -1.0f

    sget-object v1, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_22

    sget-object v6, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v1, "GJYVSkrq4PYvrBUDuc6fvsIBQLmbbZax"

    const/4 v0, 0x2

    aput-object v1, v6, v0

    cmpl-float v0, v7, v9

    if-eqz v0, :cond_23

    :goto_a
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/14;->A0i:Lcom/facebook/ads/redexgen/X/or;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/or;->A01:F

    .line 4435
    :goto_b
    move-object/from16 v6, p0

    .end local v4    # "presentationTimeUs":J
    .local v10, "presentationTimeUs":J
    move-wide v7, v4

    move-wide v9, v2

    move v11, v0

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/0O;->A0R(JJF)V

    .line 4436
    return v22

    :cond_22
    sget-object v6, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v1, "FfF70zljYTd7nA7n6wc9JJE9WyzKMeyw"

    const/4 v0, 0x2

    aput-object v1, v6, v0

    cmpl-float v0, v7, v9

    if-eqz v0, :cond_23

    goto :goto_a

    .line 4437
    :cond_23
    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_b
.end method

.method public final A25(Lcom/facebook/ads/redexgen/X/AR;)Z
    .locals 1

    .line 4438
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0U:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0Z:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0U:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4439
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/0O;->A0r(Lcom/facebook/ads/redexgen/X/AR;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 4440
    :goto_0
    return v0

    .line 4441
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A26(Lcom/facebook/ads/androidx/media3/common/ColorInfo;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/androidx/media3/common/ColorInfo;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/facebook/ads/androidx/media3/common/ColorInfo;",
            "Lcom/facebook/ads/androidx/media3/common/ColorInfo;",
            ">;"
        }
    .end annotation

    .line 4442
    invoke-static {p1}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A09(Lcom/facebook/ads/androidx/media3/common/ColorInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4443
    sget-object v1, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A09:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    sget-object v0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A09:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 4444
    :cond_0
    iget v1, p1, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A03:I

    const/4 v0, 0x7

    if-ne v1, v0, :cond_1

    .line 4445
    invoke-virtual {p1}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A0A()Lcom/facebook/ads/redexgen/X/1y;

    move-result-object v1

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1y;->A02(I)Lcom/facebook/ads/redexgen/X/1y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1y;->A03()Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    move-result-object v0

    .line 4446
    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 4447
    :cond_1
    invoke-static {p1, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final A27()V
    .locals 2

    .line 4448
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0j:Z

    .line 4449
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0i:Z

    if-nez v0, :cond_0

    .line 4450
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0i:Z

    .line 4451
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0u:Lcom/facebook/ads/redexgen/X/Fn;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0U:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Fn;->A0D(Ljava/lang/Object;)V

    .line 4452
    :cond_0
    return-void
.end method

.method public final A28(JJZ)Z
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Required for VideoProcessorManager migration"
    .end annotation

    .line 4453
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/0O;->A0k(J)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p5, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A9a(ILjava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 4454
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4455
    check-cast p2, Landroid/view/Surface;

    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/0O;->A0U(Landroid/view/Surface;)V

    .line 4456
    :cond_0
    :goto_0
    return-void

    .line 4457
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 4458
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0H:I

    .line 4459
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/14;->A1j()Lcom/facebook/ads/redexgen/X/AO;

    move-result-object v1

    .line 4460
    .local v0, "codec":Lcom/facebook/ads/redexgen/X/AO;
    if-eqz v1, :cond_0

    .line 4461
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0H:I

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/AO;->AJ8(I)V

    goto :goto_0

    .line 4462
    :cond_2
    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    .line 4463
    check-cast p2, Lcom/facebook/ads/redexgen/X/FQ;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/0O;->A0X:Lcom/facebook/ads/redexgen/X/FQ;

    goto :goto_0

    .line 4464
    :cond_3
    const/16 v0, 0x2711

    if-ne p1, v0, :cond_4

    .line 4465
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/0O;->A0f(Ljava/lang/Object;)V

    goto :goto_0

    .line 4466
    :cond_4
    const/16 v0, 0xd

    if-ne p1, v0, :cond_5

    .line 4467
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 4468
    .local v0, "videoEffects":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/util/Effect;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/FC;->A0F(Ljava/util/List;)V

    .line 4469
    .end local v0    # "videoEffects":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/util/Effect;>;"
    goto :goto_0

    :cond_5
    const/16 v3, 0xe

    sget-object v1, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v1, "MccsEzjpf2F4QgbfkxLUs5z2ugRdHbCL"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne p1, v3, :cond_8

    .line 4470
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/4N;

    .line 4471
    .local v0, "outputResolution":Lcom/facebook/ads/redexgen/X/4N;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4N;->A03()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4472
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4N;->A02()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/0O;->A0U:Landroid/view/Surface;

    sget-object v2, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v1, "OmulH2jEP4hpWDROHXWwsVVsUaMV65qL"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 4473
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0U:Landroid/view/Surface;

    invoke-virtual {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/FC;->A0C(Landroid/view/Surface;Lcom/facebook/ads/redexgen/X/4N;)V

    goto/16 :goto_0

    .line 4474
    :cond_8
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/9Z;->A9a(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public final AAG()Z
    .locals 2

    .line 4475
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/14;->AAG()Z

    move-result v1

    .line 4476
    .local v0, "isEnded":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FC;->A0G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4477
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FC;->A0I()Z

    move-result v0

    and-int/2addr v1, v0

    .line 4478
    :cond_0
    return v1
.end method

.method public final AAV()Z
    .locals 9
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomizations;
        value = {
            .subannotation Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
                value = "D18870411: Adding start stall debug reason"
            .end subannotation,
            .subannotation Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
                type = {
                    "FEATURE_LOGIC"
                }
                value = "D69547806: Only become ready once we have a surface"
            .end subannotation
        }
    .end annotation

    .line 4479
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/14;->AAV()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0T:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0U:Landroid/view/Surface;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0T:Landroid/view/Surface;

    if-eq v1, v0, :cond_1

    .line 4480
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/14;->A1j()Lcom/facebook/ads/redexgen/X/AO;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0k:Z

    if-nez v0, :cond_1

    .line 4481
    sget-object v0, Lcom/facebook/ads/redexgen/X/hX;->A08:Lcom/facebook/ads/redexgen/X/hX;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A0B:Lcom/facebook/ads/redexgen/X/hX;

    .line 4482
    :cond_1
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/14;->AAV()Z

    move-result v0

    const/4 v8, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    .line 4483
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FC;->A0G()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FC;->A0H()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0h:Z

    if-eqz v0, :cond_4

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/0O;->A0U:Landroid/view/Surface;

    sget-object v1, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v4, Lcom/facebook/ads/redexgen/X/0O;->A12:[Ljava/lang/String;

    const-string v1, "iOSBWWk"

    const/4 v0, 0x5

    aput-object v1, v4, v0

    const-string v1, "3hctIGW"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    if-eqz v5, :cond_7

    :cond_4
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0i:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0T:Landroid/view/Surface;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0O;->A0U:Landroid/view/Surface;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0T:Landroid/view/Surface;

    if-eq v1, v0, :cond_6

    .line 4484
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/14;->A1j()Lcom/facebook/ads/redexgen/X/AO;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0k:Z

    if-eqz v0, :cond_7

    .line 4485
    :cond_6
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/0O;->A0M:J

    .line 4486
    return v8

    .line 4487
    :cond_7
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/0O;->A0M:J

    const/4 v1, 0x0

    cmp-long v0, v4, v2

    if-nez v0, :cond_8

    .line 4488
    return v1

    .line 4489
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/0O;->A0M:J

    cmp-long v0, v6, v4

    if-gez v0, :cond_9

    .line 4490
    return v8

    .line 4491
    :cond_9
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/0O;->A0M:J

    .line 4492
    return v1
.end method

.method public final AHn(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 4493
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/14;->AHn(JJ)V

    .line 4494
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FC;->A0G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4495
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0O;->A0r:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/FC;->A0B(JJ)V

    .line 4496
    :cond_0
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 3

    .line 4497
    const/16 v2, 0x2aa

    const/16 v1, 0x17

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0O;->A0B(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
