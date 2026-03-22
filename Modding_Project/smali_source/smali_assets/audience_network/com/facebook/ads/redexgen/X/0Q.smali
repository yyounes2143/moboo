.class public final Lcom/facebook/ads/redexgen/X/0Q;
.super Lcom/facebook/ads/redexgen/X/14;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6W;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/mu;,
        Lcom/facebook/ads/redexgen/X/8q;
    }
.end annotation


# static fields
.field public static A0K:[B

.field public static A0L:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:J

.field public A06:Landroid/media/AudioManager;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation
.end field

.field public A07:Landroid/media/MediaFormat;

.field public A08:Lcom/facebook/ads/redexgen/X/or;

.field public A09:Lcom/facebook/ads/redexgen/X/75;

.field public A0A:Z

.field public A0B:Z

.field public A0C:Z

.field public A0D:Z

.field public A0E:Z

.field public final A0F:Landroid/content/Context;

.field public final A0G:Lcom/facebook/ads/redexgen/X/8C;

.field public final A0H:Z

.field public final A0I:Z

.field public final A0J:Lcom/facebook/ads/redexgen/X/8N;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 5
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "77C8vP87Fd7b4BP9SQRJBzWPVk4TewQg"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "oQ2qsKrmaNuyaLFB2ph9zkmGtpzAonXt"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "MDqZPLCoXCzEQwxPxYtAKuxbh2tAcx1k"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "aWPkhw6gWy0BTxYknUchyjQmABWF"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ais5GYfL5LR1KEYd6HRi1BBd2kmjCeGs"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "pdewp8MC9mt7vaqV0Zkeu3U5mw150Zm9"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "qv2CVs2gAdpJ8ZKBYAbfHfBiBdoePlCI"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "lcPZgHPLbCISPmjsMn5qIGSBsvlpomMq"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/0Q;->A09()V

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/hv;Lcom/facebook/ads/redexgen/X/hs;Lcom/facebook/ads/redexgen/X/Ar;Lcom/facebook/ads/redexgen/X/9U;ZZZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/7p;[Lcom/facebook/ads/redexgen/X/38;)V
    .locals 12

    .line 4498
    new-instance v11, Lcom/facebook/ads/redexgen/X/mw;

    move-object/from16 v0, p12

    move-object/from16 v1, p11

    invoke-direct {v11, v1, v0}, Lcom/facebook/ads/redexgen/X/mw;-><init>(Lcom/facebook/ads/redexgen/X/7p;[Lcom/facebook/ads/redexgen/X/38;)V

    move-object v0, p0

    move-object/from16 v10, p10

    move-object/from16 v9, p9

    move/from16 v8, p8

    move/from16 v7, p7

    move/from16 v6, p6

    move-object/from16 v5, p5

    move-object/from16 v4, p4

    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/0Q;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/hv;Lcom/facebook/ads/redexgen/X/hs;Lcom/facebook/ads/redexgen/X/Ar;Lcom/facebook/ads/redexgen/X/9U;ZZZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/8N;)V

    .line 4499
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/hv;Lcom/facebook/ads/redexgen/X/hs;Lcom/facebook/ads/redexgen/X/Ar;Lcom/facebook/ads/redexgen/X/9U;ZZZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/8N;)V
    .locals 13

    .line 4500
    move-object v2, p0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v4, 0x1

    const/4 v10, 0x0

    move-object v3, p0

    move/from16 v9, p6

    move-object/from16 v8, p5

    move-object/from16 v7, p4

    move-object/from16 v6, p3

    move-object v5, p2

    invoke-direct/range {v3 .. v12}, Lcom/facebook/ads/redexgen/X/14;-><init>(ILcom/facebook/ads/redexgen/X/hv;Lcom/facebook/ads/redexgen/X/hs;Lcom/facebook/ads/redexgen/X/Ar;Lcom/facebook/ads/redexgen/X/9U;ZZII)V

    .line 4501
    const/4 v0, 0x0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/0Q;->A01:I

    .line 4502
    iput v0, v2, Lcom/facebook/ads/redexgen/X/0Q;->A02:I

    .line 4503
    const-wide/16 v0, 0x0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/0Q;->A05:J

    .line 4504
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/0Q;->A0F:Landroid/content/Context;

    .line 4505
    move-object/from16 v3, p11

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/0Q;->A0J:Lcom/facebook/ads/redexgen/X/8N;

    .line 4506
    move/from16 v0, p7

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/0Q;->A0H:Z

    .line 4507
    move/from16 v0, p8

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/0Q;->A0I:Z

    .line 4508
    new-instance v0, Lcom/facebook/ads/redexgen/X/8C;

    move-object/from16 v1, p10

    move-object/from16 v4, p9

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/8C;-><init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/8D;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/0Q;->A0G:Lcom/facebook/ads/redexgen/X/8C;

    .line 4509
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/mu;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/mu;-><init>(Lcom/facebook/ads/redexgen/X/0Q;Lcom/facebook/ads/redexgen/X/8p;)V

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/8N;->AIl(Lcom/facebook/ads/redexgen/X/8J;)V

    .line 4510
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/hv;->A0B:Z

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/8N;->AIg(Z)V

    .line 4511
    return-void
.end method

.method private A00()I
    .locals 6
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Added in D36293647 for DRC"
    .end annotation

    .line 4512
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A11:Lcom/facebook/ads/redexgen/X/hv;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/hv;->A07:I

    .line 4513
    .local v0, "xHEAACEffectType":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A11:Lcom/facebook/ads/redexgen/X/hv;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/hv;->A0D:Z

    if-eqz v0, :cond_2

    .line 4514
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A11:Lcom/facebook/ads/redexgen/X/hv;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/hv;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A11:Lcom/facebook/ads/redexgen/X/hv;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/hv;->A03:I

    .line 4515
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/hI;->A00(II)I

    move-result v5

    .line 4516
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A11:Lcom/facebook/ads/redexgen/X/hv;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/hv;->A0E:Z

    if-eqz v0, :cond_2

    .line 4517
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A06:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 4518
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0F:Landroid/content/Context;

    const/16 v2, 0x63

    const/4 v1, 0x5

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0Q;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A06:Landroid/media/AudioManager;

    .line 4519
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A06:Landroid/media/AudioManager;

    .line 4520
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/hI;->A01(Landroid/media/AudioManager;)I

    move-result v4

    .line 4521
    .local v1, "DRCTypeFromHeadset":I
    const/4 v3, 0x3

    sget-object v1, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const-string v1, "LZogbi5BZWCXkICBwmOMX8OtkvvUDPu5"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "HFkZzMhVfRobNZeBREZjfgSbFT9rBjx5"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eq v4, v3, :cond_2

    .line 4522
    move v5, v4

    .line 4523
    .end local v1    # "DRCTypeFromHeadset":I
    :cond_2
    return v5
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/or;)I
    .locals 3

    .line 4524
    const/16 v2, 0x68

    const/16 v1, 0x9

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0Q;->A07(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4525
    iget v0, p0, Lcom/facebook/ads/redexgen/X/or;->A0C:I

    .line 4526
    :goto_0
    return v0

    .line 4527
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/AR;Lcom/facebook/ads/redexgen/X/or;)I
    .locals 4

    .line 4528
    const/16 v2, 0x26

    const/16 v1, 0x16

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0Q;->A07(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/AR;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4529
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_3

    sget v3, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const-string v1, "s8yZpZp8nIrL7EQY3mPJ1kqCekDwsY6i"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "yd2Z0BEEocl53iuZqAxtcOKT0DXRknsH"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/16 v0, 0x17

    if-ne v3, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0F:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A18(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4530
    :cond_1
    const/4 v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const-string v1, "9QHOUbokymVnxuZO6z7rLJCC2XoG"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    .line 4531
    :cond_3
    iget v3, p2, Lcom/facebook/ads/redexgen/X/or;->A0B:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    return v3

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const-string v1, "bWiZaXhFQHkoAXZnJ4ncaGOlncM6vz1V"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "kg6ZwO8ePPrkJPsuoAADu0ZS0U6OWo96"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3
.end method

.method private final A03(Lcom/facebook/ads/redexgen/X/AR;Lcom/facebook/ads/redexgen/X/or;[Lcom/facebook/ads/redexgen/X/or;)I
    .locals 1

    .line 4532
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/0Q;->A02(Lcom/facebook/ads/redexgen/X/AR;Lcom/facebook/ads/redexgen/X/or;)I

    move-result v0

    .line 4533
    .local v0, "maxInputSize":I
    return v0
.end method

.method private final A04(Lcom/facebook/ads/redexgen/X/or;Ljava/lang/String;I)Landroid/media/MediaFormat;
    .locals 6

    .line 4534
    new-instance v4, Landroid/media/MediaFormat;

    invoke-direct {v4}, Landroid/media/MediaFormat;-><init>()V

    .line 4535
    .local v0, "mediaFormat":Landroid/media/MediaFormat;
    const/16 v2, 0x9b

    const/4 v1, 0x4

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0Q;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4536
    const/16 v2, 0x71

    const/16 v1, 0xd

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0Q;->A07(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A06:I

    invoke-virtual {v4, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4537
    const/16 v2, 0xb1

    const/16 v1, 0xb

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0Q;->A07(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0G:I

    invoke-virtual {v4, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4538
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0X:Ljava/util/List;

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/46;->A06(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 4539
    const/16 v2, 0x8d

    const/16 v1, 0xe

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0Q;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, p3}, Lcom/facebook/ads/redexgen/X/46;->A04(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 4540
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_1

    .line 4541
    const/16 v2, 0xa9

    const/16 v1, 0x8

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0Q;->A07(III)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const-string v1, "w8gjBPJzE632nZpBrlzwe1tLIvq8CsOY"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "ag3DPBWcd6fSOrmBwunkDpt77Nl4HY4l"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v4, v5, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4542
    :cond_1
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0R:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/or;->A0R:Ljava/lang/String;

    .line 4543
    const/16 v2, 0x9f

    const/16 v1, 0xa

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0Q;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A11:Lcom/facebook/ads/redexgen/X/hv;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/hv;->A0F:Z

    if-eqz v0, :cond_2

    .line 4544
    const/16 v2, 0x3c

    const/16 v1, 0x13

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0Q;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0Q;->A00()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4545
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A11:Lcom/facebook/ads/redexgen/X/hv;

    iget v3, v0, Lcom/facebook/ads/redexgen/X/hv;->A08:I

    const/16 v2, 0x4f

    const/16 v1, 0x14

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0Q;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4546
    :cond_2
    return-object v4
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/0Q;)Lcom/facebook/ads/redexgen/X/75;
    .locals 0

    .line 4547
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/0Q;)Lcom/facebook/ads/redexgen/X/8C;
    .locals 0

    .line 4548
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0G:Lcom/facebook/ads/redexgen/X/8C;

    return-object p0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/0Q;->A0K:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v3, p0, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const-string v1, "GcWDzLLiTAl0tD46XyRRBcNodd92JrSP"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "GhxldHXMoVDog6OAV5RKTarDpyl0kviC"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sub-int/2addr v3, p2

    add-int/lit8 v0, v3, -0x41

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A08()V
    .locals 7

    .line 4549
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0J:Lcom/facebook/ads/redexgen/X/8N;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0Q;->AAG()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/8N;->A7X(Z)J

    move-result-wide v4

    .line 4550
    .local v0, "newCurrentPositionUs":J
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v4, v1

    if-eqz v0, :cond_0

    .line 4551
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0B:Z

    if-eqz v0, :cond_1

    .line 4552
    :goto_0
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/0Q;->A04:J

    .line 4553
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0B:Z

    .line 4554
    :cond_0
    return-void

    .line 4555
    :cond_1
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/0Q;->A04:J

    sget-object v6, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v6, v0

    const/4 v0, 0x7

    aget-object v6, v6, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v6, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const-string v1, "nIJcPeFAtvuDBzBlXMRw0HpU2OMpTIMr"

    const/4 v0, 0x4

    aput-object v1, v6, v0

    const-string v1, "dapTBdH8hqStbvnLCARUyCc0T0ChI3T8"

    const/4 v0, 0x0

    aput-object v1, v6, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_0
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0xcb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/0Q;->A0K:[B

    return-void

    :array_0
    .array-data 1
        -0x67t
        -0x4ft
        -0x50t
        -0x4bt
        -0x53t
        -0x71t
        -0x45t
        -0x50t
        -0x4ft
        -0x51t
        -0x73t
        -0x3ft
        -0x50t
        -0x4bt
        -0x45t
        -0x62t
        -0x4ft
        -0x46t
        -0x50t
        -0x4ft
        -0x42t
        -0x4ft
        -0x42t
        -0x4dt
        -0x4ft
        -0x44t
        -0x6et
        -0x49t
        -0x57t
        -0x59t
        -0x6et
        -0x3bt
        -0x3bt
        -0x39t
        -0x6et
        -0x38t
        -0x37t
        -0x39t
        -0x24t
        -0x26t
        -0x1bt
        -0x45t
        -0xct
        -0x4t
        -0x4t
        -0xct
        -0x7t
        -0xet
        -0x45t
        -0x1t
        -0x12t
        0x4t
        -0x45t
        -0xft
        -0xet
        -0x10t
        -0x4t
        -0xft
        -0xet
        -0x1t
        -0x11t
        -0x11t
        -0xft
        -0x45t
        -0xet
        0x0t
        -0xft
        -0x45t
        -0xdt
        -0xct
        -0xct
        -0xdt
        -0xft
        0x2t
        -0x45t
        0x2t
        0x7t
        -0x2t
        -0xdt
        -0x33t
        -0x33t
        -0x31t
        -0x67t
        -0x20t
        -0x33t
        -0x22t
        -0x2dt
        -0x2ft
        -0x20t
        -0x67t
        -0x22t
        -0x2ft
        -0x2et
        -0x67t
        -0x28t
        -0x2ft
        -0x1et
        -0x2ft
        -0x28t
        0x7t
        0x1bt
        0xat
        0xft
        0x15t
        0x12t
        0x26t
        0x15t
        0x1at
        0x20t
        -0x20t
        0x23t
        0x12t
        0x28t
        -0x5at
        -0x55t
        -0x5ct
        -0x4ft
        -0x4ft
        -0x58t
        -0x51t
        0x70t
        -0x5at
        -0x4et
        -0x48t
        -0x4ft
        -0x49t
        -0x1ft
        -0x22t
        -0x15t
        -0x18t
        -0x1bt
        -0x13t
        -0x22t
        -0x3bt
        -0x3et
        -0x31t
        -0x34t
        -0x32t
        -0x37t
        -0x2ft
        -0x3et
        -0x27t
        -0x33t
        -0x1ct
        -0x67t
        -0x2bt
        -0x26t
        -0x24t
        -0x1ft
        -0x20t
        -0x67t
        -0x21t
        -0x2bt
        -0x1at
        -0x2ft
        -0x44t
        -0x48t
        -0x44t
        -0x4ct
        -0x43t
        -0x40t
        -0x7ct
        -0x4ft
        0x7et
        -0x7ct
        -0x80t
        0x7et
        -0x7ct
        -0x7et
        -0x44t
        -0x42t
        -0x4bt
        -0x45t
        -0x42t
        -0x4bt
        -0x40t
        -0x3bt
        -0x1bt
        -0x2dt
        -0x21t
        -0x1et
        -0x22t
        -0x29t
        -0x61t
        -0x1ct
        -0x2dt
        -0x1at
        -0x29t
        -0x36t
        -0x48t
        -0x3ct
        -0x36t
        -0x34t
        -0x3bt
        -0x42t
        -0x2t
        -0x17t
        -0xat
        -0xdt
        -0x16t
        -0x10t
        -0x8t
        -0x17t
    .end array-data
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/or;)Z
    .locals 4

    .line 4556
    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    .line 4557
    .local v0, "mimeType":Ljava/lang/String;
    const/16 v2, 0x68

    const/16 v1, 0x9

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0Q;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4558
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const-string v1, "mDVewdn3RvQYeqn2qaR7zJPFTyK9zqzw"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "a0e3mP5dmYOn07QMhHRhkP7lbfukdIg9"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3

    .line 4559
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0J:Lcom/facebook/ads/redexgen/X/8N;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/8N;->AJc(Lcom/facebook/ads/redexgen/X/or;)Z

    move-result v0

    return v0
.end method

.method public static A0B(Ljava/lang/String;)Z
    .locals 3

    .line 4560
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_1

    .line 4561
    const/16 v2, 0x17

    const/16 v1, 0xf

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0Q;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/facebook/ads/redexgen/X/4a;->A05:Ljava/lang/String;

    .line 4562
    const/16 v2, 0xbc

    const/4 v1, 0x7

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0Q;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    .line 4563
    const/16 v2, 0xc3

    const/16 v1, 0x8

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0Q;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    .line 4564
    const/16 v2, 0x7e

    const/4 v1, 0x7

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0Q;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    .line 4565
    const/16 v2, 0x85

    const/16 v1, 0x8

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0Q;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 4566
    :goto_0
    return v0

    .line 4567
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A1X()V
    .locals 1

    .line 4568
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/14;->A1X()V

    .line 4569
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0J:Lcom/facebook/ads/redexgen/X/8N;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8N;->AGG()V

    .line 4570
    return-void
.end method

.method public final A1Y()V
    .locals 1

    .line 4571
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0Q;->A08()V

    .line 4572
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0J:Lcom/facebook/ads/redexgen/X/8N;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8N;->pause()V

    .line 4573
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/14;->A1Y()V

    .line 4574
    return-void
.end method

.method public final A1Z()V
    .locals 3

    .line 4575
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0J:Lcom/facebook/ads/redexgen/X/8N;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8N;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4576
    :try_start_1
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/14;->A1Z()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4577
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A0j:Lcom/facebook/ads/redexgen/X/5g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5g;->A02()V

    .line 4578
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0G:Lcom/facebook/ads/redexgen/X/8C;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A0j:Lcom/facebook/ads/redexgen/X/5g;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8C;->A07(Lcom/facebook/ads/redexgen/X/5g;)V

    .line 4579
    return-void

    .line 4580
    :catchall_0
    move-exception v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A0j:Lcom/facebook/ads/redexgen/X/5g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5g;->A02()V

    .line 4581
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0G:Lcom/facebook/ads/redexgen/X/8C;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A0j:Lcom/facebook/ads/redexgen/X/5g;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8C;->A07(Lcom/facebook/ads/redexgen/X/5g;)V

    .line 4582
    throw v2

    .line 4583
    :catchall_1
    move-exception v2

    .line 4584
    :try_start_2
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/14;->A1Z()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4585
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A0j:Lcom/facebook/ads/redexgen/X/5g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5g;->A02()V

    .line 4586
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0G:Lcom/facebook/ads/redexgen/X/8C;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A0j:Lcom/facebook/ads/redexgen/X/5g;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8C;->A07(Lcom/facebook/ads/redexgen/X/5g;)V

    .line 4587
    throw v2

    .line 4588
    :catchall_2
    move-exception v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A0j:Lcom/facebook/ads/redexgen/X/5g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5g;->A02()V

    .line 4589
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0G:Lcom/facebook/ads/redexgen/X/8C;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A0j:Lcom/facebook/ads/redexgen/X/5g;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8C;->A07(Lcom/facebook/ads/redexgen/X/5g;)V

    .line 4590
    throw v2
.end method

.method public final A1a(JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 4591
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/14;->A1a(JZ)V

    .line 4592
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0D:Z

    if-eqz v0, :cond_0

    .line 4593
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0J:Lcom/facebook/ads/redexgen/X/8N;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8N;->A6L()V

    .line 4594
    :goto_0
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/0Q;->A04:J

    .line 4595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0A:Z

    .line 4596
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0B:Z

    .line 4597
    return-void

    .line 4598
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0J:Lcom/facebook/ads/redexgen/X/8N;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8N;->flush()V

    goto :goto_0
.end method

.method public final A1b(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 4599
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/14;->A1b(ZZ)V

    .line 4600
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0G:Lcom/facebook/ads/redexgen/X/8C;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A0j:Lcom/facebook/ads/redexgen/X/5g;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8C;->A08(Lcom/facebook/ads/redexgen/X/5g;)V

    .line 4601
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9Z;->A1V()Lcom/facebook/ads/redexgen/X/7G;

    move-result-object v0

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/7G;->A00:Z

    if-eqz v0, :cond_0

    .line 4602
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0J:Lcom/facebook/ads/redexgen/X/8N;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8N;->A6E()V

    .line 4603
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0J:Lcom/facebook/ads/redexgen/X/8N;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9Z;->A1W()Lcom/facebook/ads/redexgen/X/7m;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/8N;->AIw(Lcom/facebook/ads/redexgen/X/7m;)V

    .line 4604
    return-void

    .line 4605
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0J:Lcom/facebook/ads/redexgen/X/8N;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8N;->A5r()V

    goto :goto_0
.end method

.method public final A1g(Lcom/facebook/ads/redexgen/X/AO;Lcom/facebook/ads/redexgen/X/AR;Lcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/or;)I
    .locals 2

    .line 4606
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A11:Lcom/facebook/ads/redexgen/X/hv;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/hv;->A0N:Z

    if-eqz v0, :cond_0

    .line 4607
    invoke-direct {p0, p2, p4}, Lcom/facebook/ads/redexgen/X/0Q;->A02(Lcom/facebook/ads/redexgen/X/AR;Lcom/facebook/ads/redexgen/X/or;)I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A00:I

    if-gt v1, v0, :cond_0

    .line 4608
    const/4 v1, 0x1

    invoke-virtual {p2, p3, p4, v1}, Lcom/facebook/ads/redexgen/X/AR;->A0U(Lcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/or;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p3, Lcom/facebook/ads/redexgen/X/or;->A08:I

    if-nez v0, :cond_0

    iget v0, p3, Lcom/facebook/ads/redexgen/X/or;->A09:I

    if-nez v0, :cond_0

    iget v0, p4, Lcom/facebook/ads/redexgen/X/or;->A08:I

    if-nez v0, :cond_0

    iget v0, p4, Lcom/facebook/ads/redexgen/X/or;->A09:I

    if-nez v0, :cond_0

    .line 4609
    return v1

    .line 4610
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final A1h(Lcom/facebook/ads/redexgen/X/Ar;Lcom/facebook/ads/redexgen/X/9U;Lcom/facebook/ads/redexgen/X/or;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Av;
        }
    .end annotation

    .line 4611
    iget-object v4, p3, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    .line 4612
    .local v0, "mimeType":Ljava/lang/String;
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/2h;->A0C(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 4613
    return v3

    .line 4614
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v5, 0x15

    if-lt v0, v5, :cond_1

    const/16 v8, 0x20

    .line 4615
    .local v1, "tunnelingSupport":I
    :goto_0
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/14;->A1G(Lcom/facebook/ads/redexgen/X/or;)Z

    move-result v7

    .line 4616
    .local v4, "supportsFormatDrm":Z
    const/4 v6, 0x4

    if-eqz v7, :cond_2

    .line 4617
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/0Q;->A0A(Lcom/facebook/ads/redexgen/X/or;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4618
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ay;->A0I()Lcom/facebook/ads/redexgen/X/AR;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4619
    or-int/lit8 v0, v8, 0x8

    or-int/2addr v0, v6

    return v0

    .line 4620
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 4621
    :cond_2
    const/16 v2, 0x68

    const/16 v1, 0x9

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0Q;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0J:Lcom/facebook/ads/redexgen/X/8N;

    iget v1, p3, Lcom/facebook/ads/redexgen/X/or;->A06:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/or;->A0C:I

    .line 4622
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8N;->AJe(II)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0J:Lcom/facebook/ads/redexgen/X/8N;

    iget v0, p3, Lcom/facebook/ads/redexgen/X/or;->A06:I

    .line 4623
    const/4 v2, 0x2

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/8N;->AJe(II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 4624
    :cond_4
    return v4

    .line 4625
    :cond_5
    invoke-virtual {p0, p1, p3, v3}, Lcom/facebook/ads/redexgen/X/0Q;->A1l(Lcom/facebook/ads/redexgen/X/Ar;Lcom/facebook/ads/redexgen/X/or;Z)Ljava/util/List;

    move-result-object v1

    .line 4626
    .local v6, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4627
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/76;->A00(I)I

    move-result v0

    return v0

    .line 4628
    :cond_6
    if-nez v7, :cond_7

    .line 4629
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/76;->A00(I)I

    move-result v0

    return v0

    .line 4630
    :cond_7
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_8

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const-string v1, "n12bmxDOOVBzqYYOQBRjqp0moJyAYtSu"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "BaglFChNOdaklTSyUQRitIBwXJJTR14H"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    check-cast v4, Lcom/facebook/ads/redexgen/X/AR;

    .line 4631
    .local v8, "decoderInfo":Lcom/facebook/ads/redexgen/X/AR;
    sget v0, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    if-lt v0, v5, :cond_a

    iget v0, p3, Lcom/facebook/ads/redexgen/X/or;->A0G:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    iget v0, p3, Lcom/facebook/ads/redexgen/X/or;->A0G:I

    .line 4632
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/AR;->A0Q(I)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_9
    iget v0, p3, Lcom/facebook/ads/redexgen/X/or;->A06:I

    if-eq v0, v1, :cond_a

    iget v0, p3, Lcom/facebook/ads/redexgen/X/or;->A06:I

    .line 4633
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/AR;->A0P(I)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    const/4 v3, 0x1

    .line 4634
    .local v2, "decoderCapable":Z
    :cond_b
    if-eqz v3, :cond_d

    invoke-virtual {v4, p3}, Lcom/facebook/ads/redexgen/X/AR;->A0T(Lcom/facebook/ads/redexgen/X/or;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4635
    const/16 v0, 0x10

    .line 4636
    .local v3, "adaptiveSupport":I
    :goto_1
    if-eqz v3, :cond_c

    .line 4637
    .local v5, "formatSupport":I
    :goto_2
    or-int/2addr v0, v8

    or-int/2addr v0, v6

    return v0

    .line 4638
    :cond_c
    const/4 v6, 0x3

    goto :goto_2

    .line 4639
    :cond_d
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public final A1l(Lcom/facebook/ads/redexgen/X/Ar;Lcom/facebook/ads/redexgen/X/or;Z)Ljava/util/List;
    .locals 4
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

    .line 4640
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    .line 4641
    .local v0, "mimeType":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 4642
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4643
    :cond_0
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/0Q;->A0A(Lcom/facebook/ads/redexgen/X/or;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4644
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ay;->A0I()Lcom/facebook/ads/redexgen/X/AR;

    move-result-object v0

    .line 4645
    .local v1, "codecInfo":Lcom/facebook/ads/redexgen/X/AR;
    if-eqz v0, :cond_2

    .line 4646
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const-string v1, "VH1rG9jH3WXhHTxnLXRxhYBKNNIMNlpD"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "4dJInhYjvnfEcXSyIbRNEiIfORerumv3"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v3

    .line 4647
    .end local v1    # "codecInfo":Lcom/facebook/ads/redexgen/X/AR;
    :cond_2
    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    .line 4648
    const/4 v0, 0x0

    invoke-interface {p1, v1, p3, v0}, Lcom/facebook/ads/redexgen/X/Ar;->A7g(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 4649
    .local v1, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final A1o()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 4650
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0J:Lcom/facebook/ads/redexgen/X/8N;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8N;->AGI()V

    .line 4651
    return-void
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/8M; {:try_start_0 .. :try_end_0} :catch_0

    .line 4652
    :catch_0
    move-exception v3

    .line 4653
    .local v0, "e":Lcom/facebook/ads/redexgen/X/8M;
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/8M;->A01:Lcom/facebook/ads/redexgen/X/or;

    iget-boolean v1, v3, Lcom/facebook/ads/redexgen/X/8M;->A02:Z

    const/16 v0, 0x138a

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9Z;->A1T(Ljava/lang/Throwable;Lcom/facebook/ads/redexgen/X/or;ZI)Lcom/facebook/ads/redexgen/X/9Y;

    move-result-object v0

    throw v0
.end method

.method public final A1s(Lcom/facebook/ads/redexgen/X/or;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 4654
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/14;->A1s(Lcom/facebook/ads/redexgen/X/or;)V

    .line 4655
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/0Q;->A08:Lcom/facebook/ads/redexgen/X/or;

    .line 4656
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0G:Lcom/facebook/ads/redexgen/X/8C;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0Q;->A08:Lcom/facebook/ads/redexgen/X/or;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8C;->A05(Lcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/5j;)V

    .line 4657
    return-void
.end method

.method public final A1u(Lcom/facebook/ads/redexgen/X/nY;)V
    .locals 5

    .line 4658
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0A:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/5I;->A04()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4659
    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/nY;->A01:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A04:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v1, 0x7a120

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 4660
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/nY;->A01:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A04:J

    .line 4661
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0A:Z

    .line 4662
    :cond_1
    return-void
.end method

.method public final A1v(Lcom/facebook/ads/redexgen/X/AO;Landroid/media/MediaFormat;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 4663
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A07:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    .line 4664
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/0Q;->A07:Landroid/media/MediaFormat;

    const/16 v2, 0x9b

    const/4 v1, 0x4

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0Q;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2h;->A00(Ljava/lang/String;)I

    move-result v5

    .line 4665
    .local v0, "encoding":I
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/0Q;->A07:Landroid/media/MediaFormat;

    .line 4666
    .local v1, "format":Landroid/media/MediaFormat;
    .restart local v1    # "format":Landroid/media/MediaFormat;
    :goto_0
    const/16 v2, 0x71

    const/16 v1, 0xd

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0Q;->A07(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    .line 4667
    .local v3, "channelCount":I
    const/16 v2, 0xb1

    const/16 v1, 0xb

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0Q;->A07(III)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 4668
    .end local v0    # "encoding":I
    .end local v1    # "format":Landroid/media/MediaFormat;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A08:Lcom/facebook/ads/redexgen/X/or;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0Q;->A01(Lcom/facebook/ads/redexgen/X/or;)I

    move-result v5

    .line 4669
    .restart local v0    # "encoding":I
    move-object v7, p2

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const-string v1, "oVYorWwiJ9QuTT6BmhgOhsdn4ih9katO"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "s4BjQ2RFQmOrQGZBZgzfkwBc6WQlVCBr"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v7, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 4670
    .local v5, "sampleRate":I
    mul-int/2addr v0, v6

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A03:I

    .line 4671
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0C:Z

    if-eqz v0, :cond_3

    const/4 v7, 0x6

    sget-object v2, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const-string v1, "pG08ZDLF1Nwa7YWNReZn10nEeTPXXDD5"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ne v6, v7, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A08:Lcom/facebook/ads/redexgen/X/or;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/or;->A06:I

    if-ge v0, v7, :cond_3

    .line 4672
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A08:Lcom/facebook/ads/redexgen/X/or;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/or;->A06:I

    new-array v6, v0, [I

    .line 4673
    .local v6, "channelMap":[I
    const/4 v1, 0x0

    .local v7, "i":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A08:Lcom/facebook/ads/redexgen/X/or;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/or;->A06:I

    if-ge v1, v0, :cond_4

    .line 4674
    aput v1, v6, v1

    .line 4675
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4676
    .end local v6    # "channelMap":[I
    :cond_3
    const/4 v6, 0x0

    .line 4677
    .restart local v6    # "channelMap":[I
    :cond_4
    new-instance v7, Lcom/facebook/ads/redexgen/X/2D;

    invoke-direct {v7}, Lcom/facebook/ads/redexgen/X/2D;-><init>()V

    .line 4678
    const/16 v2, 0x68

    const/16 v1, 0x9

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0Q;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/2D;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 4679
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/2D;->A0i(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    .line 4680
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0b(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    .line 4681
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0m(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 4682
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A14()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v2

    .line 4683
    .local v2, "audioSinkInputFormat":Lcom/facebook/ads/redexgen/X/or;
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0J:Lcom/facebook/ads/redexgen/X/8N;

    const/4 v0, 0x0

    invoke-interface {v1, v2, v0, v6}, Lcom/facebook/ads/redexgen/X/8N;->A51(Lcom/facebook/ads/redexgen/X/or;I[I)V

    .line 4684
    return-void
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/8G; {:try_start_0 .. :try_end_0} :catch_0

    .line 4685
    :catch_0
    move-exception v2

    .line 4686
    .local v4, "e":Lcom/facebook/ads/redexgen/X/8G;
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/8G;->A00:Lcom/facebook/ads/redexgen/X/or;

    const/16 v0, 0x1389

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9Z;->A1S(Ljava/lang/Throwable;Lcom/facebook/ads/redexgen/X/or;I)Lcom/facebook/ads/redexgen/X/9Y;

    move-result-object v0

    throw v0
.end method

.method public final A1w(Lcom/facebook/ads/redexgen/X/AR;Lcom/facebook/ads/redexgen/X/AO;Lcom/facebook/ads/redexgen/X/or;Landroid/media/MediaCrypto;)V
    .locals 6

    .line 4687
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9Z;->A1e()[Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    invoke-direct {p0, p1, p3, v0}, Lcom/facebook/ads/redexgen/X/0Q;->A03(Lcom/facebook/ads/redexgen/X/AR;Lcom/facebook/ads/redexgen/X/or;[Lcom/facebook/ads/redexgen/X/or;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A00:I

    .line 4688
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/AR;->A03:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0Q;->A0B(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0C:Z

    .line 4689
    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/AR;->A02:Ljava/lang/String;

    .line 4690
    const/16 v2, 0x68

    const/16 v1, 0x9

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0Q;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    .line 4691
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0E:Z

    .line 4692
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/AR;->A01:Ljava/lang/String;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A00:I

    invoke-direct {p0, p3, v1, v0}, Lcom/facebook/ads/redexgen/X/0Q;->A04(Lcom/facebook/ads/redexgen/X/or;Ljava/lang/String;I)Landroid/media/MediaFormat;

    move-result-object v1

    .line 4693
    .local v0, "mediaFormat":Landroid/media/MediaFormat;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v3, p4

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/AO;->A50(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;ILjava/lang/Object;)V

    .line 4694
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0E:Z

    if-eqz v0, :cond_0

    .line 4695
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/0Q;->A07:Landroid/media/MediaFormat;

    .line 4696
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/0Q;->A07:Landroid/media/MediaFormat;

    const/16 v2, 0x9b

    const/4 v1, 0x4

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0Q;->A07(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p3, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4697
    :goto_1
    return-void

    .line 4698
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A07:Landroid/media/MediaFormat;

    goto :goto_1

    .line 4699
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A1x(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "D45988204: [FBLite][Video] Add Codec Hooks for Logging"
    .end annotation

    .line 4700
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0G:Lcom/facebook/ads/redexgen/X/8C;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/8C;->A0F(Ljava/lang/String;)V

    .line 4701
    return-void
.end method

.method public final A1y(Ljava/lang/String;JJ)V
    .locals 6

    .line 4702
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0G:Lcom/facebook/ads/redexgen/X/8C;

    move-wide v4, p4

    move-wide v2, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/8C;->A0G(Ljava/lang/String;JJ)V

    .line 4703
    return-void
.end method

.method public final A22()Z
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Added in D6142814"
    .end annotation

    .line 4704
    const/4 v0, 0x0

    return v0
.end method

.method public final A23(JJLcom/facebook/ads/redexgen/X/AO;Ljava/nio/ByteBuffer;IIJZZ)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 4705
    move-object v5, p0

    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/0Q;->A0E:Z

    const/4 v4, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_1

    and-int/lit8 v3, p8, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const-string v1, "qFTZlqBsfbROWjHKIBaS9ttrRfnfHc6a"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "sZoZRvagNjZKK9rko7XS8oWwcuS8hqha"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 4706
    invoke-interface {p5, p7, v4}, Lcom/facebook/ads/redexgen/X/AO;->AGy(IZ)V

    .line 4707
    return v7

    .line 4708
    :cond_1
    if-eqz p11, :cond_3

    .line 4709
    invoke-interface {p5, p7, v4}, Lcom/facebook/ads/redexgen/X/AO;->AGy(IZ)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_2

    .line 4710
    sget-object v2, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const-string v1, "i4U0xdeb2kJYTtTzacReJ5RV5axgIdhD"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "rrPeATHc6C5SnSGUS9RZuIpTT0sGFjMh"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/14;->A0j:Lcom/facebook/ads/redexgen/X/5g;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/5g;->A0B:I

    add-int/2addr v0, v7

    iput v0, v1, Lcom/facebook/ads/redexgen/X/5g;->A0B:I

    .line 4711
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/0Q;->A0J:Lcom/facebook/ads/redexgen/X/8N;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8N;->A9Z()V

    .line 4712
    return v7

    .line 4713
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const-string v1, "GzmR5b8Z6T6If0UBPoEMKvf6QjFSlvzk"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "qLQdQ1juS6S8x5RB3mUlKTK412OZk0qd"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/14;->A0j:Lcom/facebook/ads/redexgen/X/5g;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/5g;->A0B:I

    add-int/2addr v0, v7

    iput v0, v1, Lcom/facebook/ads/redexgen/X/5g;->A0B:I

    .line 4714
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/0Q;->A0J:Lcom/facebook/ads/redexgen/X/8N;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8N;->A9Z()V

    .line 4715
    return v7

    .line 4716
    .local p1, "valuePosition":I
    :cond_3
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/0Q;->A0I:Z

    if-eqz v0, :cond_5

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/0Q;->A08:Lcom/facebook/ads/redexgen/X/or;

    .line 4717
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0Q;->A01(Lcom/facebook/ads/redexgen/X/or;)I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_5

    if-nez p8, :cond_5

    iget v0, v5, Lcom/facebook/ads/redexgen/X/0Q;->A03:I

    if-lez v0, :cond_5

    .line 4718
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr v1, v0

    const/16 v0, 0xc

    if-lt v1, v0, :cond_5

    .line 4719
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 4720
    .local v0, "originalPosition":I
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 4721
    .local p3, "originalLimit":I
    const/16 v0, 0xa

    invoke-virtual {p6, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4722
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 4723
    .local p4, "value":S
    invoke-virtual {p6, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4724
    invoke-virtual {p6, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 4725
    iget v2, v5, Lcom/facebook/ads/redexgen/X/0Q;->A01:I

    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr v1, v0

    add-int/2addr v2, v1

    iput v2, v5, Lcom/facebook/ads/redexgen/X/0Q;->A01:I

    .line 4726
    iget v3, v5, Lcom/facebook/ads/redexgen/X/0Q;->A02:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const-string v1, "MwudhWWmLfAHxFUBWVuNAQ0R1ppnonhu"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "h4oByFchRKdWl7IBcc7CSq20vr2fgRzF"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    add-int/2addr v3, v7

    iput v3, v5, Lcom/facebook/ads/redexgen/X/0Q;->A02:I

    .line 4727
    iget-wide v2, v5, Lcom/facebook/ads/redexgen/X/0Q;->A05:J

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .end local p1    # "valuePosition":I
    .local p8, "valuePosition":I
    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, v5, Lcom/facebook/ads/redexgen/X/0Q;->A05:J

    .line 4728
    iget v1, v5, Lcom/facebook/ads/redexgen/X/0Q;->A01:I

    iget v0, v5, Lcom/facebook/ads/redexgen/X/0Q;->A03:I

    mul-int/lit8 v0, v0, 0x2

    if-lt v1, v0, :cond_5

    .line 4729
    iget-object v6, v5, Lcom/facebook/ads/redexgen/X/0Q;->A0G:Lcom/facebook/ads/redexgen/X/8C;

    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/0Q;->A05:J

    iget v2, v5, Lcom/facebook/ads/redexgen/X/0Q;->A02:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v2, v0

    invoke-virtual {v6, v2}, Lcom/facebook/ads/redexgen/X/8C;->A00(I)V

    .line 4730
    iput v4, v5, Lcom/facebook/ads/redexgen/X/0Q;->A01:I

    .line 4731
    iput v4, v5, Lcom/facebook/ads/redexgen/X/0Q;->A02:I

    .line 4732
    const-wide/16 v0, 0x0

    iput-wide v0, v5, Lcom/facebook/ads/redexgen/X/0Q;->A05:J

    .line 4733
    .end local p1
    .restart local p8    # "valuePosition":I
    :cond_5
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/0Q;->A0H:Z

    move-wide/from16 v2, p9

    if-eqz v0, :cond_6

    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-le v1, v0, :cond_6

    .line 4734
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 4735
    .restart local v0    # "originalPosition":I
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 4736
    .local p0, "originalLimit":I
    sub-int v0, v1, v6

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4737
    .local p1, "clone":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 4738
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 4739
    invoke-virtual {p6, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4740
    invoke-virtual {p6, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 4741
    iget-object v7, v5, Lcom/facebook/ads/redexgen/X/0Q;->A0G:Lcom/facebook/ads/redexgen/X/8C;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    const-wide/16 v0, 0x3e8

    div-long v0, v2, v0

    invoke-virtual {v7, v6, v0, v1}, Lcom/facebook/ads/redexgen/X/8C;->A0K([BJ)V

    .line 4742
    .end local v0    # "originalPosition":I
    .end local p0    # "originalLimit":I
    .end local p1    # "clone":Ljava/nio/ByteBuffer;
    :cond_6
    :try_start_0
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/0Q;->A0J:Lcom/facebook/ads/redexgen/X/8N;

    const/4 v0, 0x1

    invoke-interface {v1, p6, v2, v3, v0}, Lcom/facebook/ads/redexgen/X/8N;->A9W(Ljava/nio/ByteBuffer;JI)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4743
    invoke-interface {p5, p7, v4}, Lcom/facebook/ads/redexgen/X/AO;->AGy(IZ)V

    .line 4744
    iget-object v2, v5, Lcom/facebook/ads/redexgen/X/14;->A0j:Lcom/facebook/ads/redexgen/X/5g;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/5g;->A09:I

    const/4 v0, 0x1

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/5g;->A09:I

    .line 4745
    return v0

    .line 4746
    :cond_7
    return v4
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/8H; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/facebook/ads/redexgen/X/8M; {:try_start_0 .. :try_end_0} :catch_0

    .line 4747
    :catch_0
    move-exception v3

    .line 4748
    .local v0, "e":Lcom/facebook/ads/redexgen/X/8M;
    iget-object v2, v5, Lcom/facebook/ads/redexgen/X/14;->A0i:Lcom/facebook/ads/redexgen/X/or;

    iget-boolean v1, v3, Lcom/facebook/ads/redexgen/X/8M;->A02:Z

    const/16 v0, 0x138a

    invoke-virtual {v5, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9Z;->A1T(Ljava/lang/Throwable;Lcom/facebook/ads/redexgen/X/or;ZI)Lcom/facebook/ads/redexgen/X/9Y;

    move-result-object v0

    throw v0

    .line 4749
    .end local v0    # "e":Lcom/facebook/ads/redexgen/X/8M;
    :catch_1
    move-exception v3

    .line 4750
    .local v0, "e":Lcom/facebook/ads/redexgen/X/8H;
    iget-object v2, v5, Lcom/facebook/ads/redexgen/X/0Q;->A08:Lcom/facebook/ads/redexgen/X/or;

    iget-boolean v1, v3, Lcom/facebook/ads/redexgen/X/8H;->A02:Z

    const/16 v0, 0x1389

    invoke-virtual {v5, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9Z;->A1T(Ljava/lang/Throwable;Lcom/facebook/ads/redexgen/X/or;ZI)Lcom/facebook/ads/redexgen/X/9Y;

    move-result-object v0

    throw v0
.end method

.method public final A26()V
    .locals 1

    .line 4751
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0B:Z

    .line 4752
    return-void
.end method

.method public final A8L()Lcom/facebook/ads/redexgen/X/6W;
    .locals 0

    .line 4753
    return-object p0
.end method

.method public final A8e()Lcom/facebook/ads/redexgen/X/ob;
    .locals 1

    .line 4754
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0J:Lcom/facebook/ads/redexgen/X/8N;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8N;->A8e()Lcom/facebook/ads/redexgen/X/ob;

    move-result-object v0

    return-object v0
.end method

.method public final A8h()J
    .locals 5

    .line 4755
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9Z;->A92()I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    .line 4756
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0Q;->A08()V

    .line 4757
    :cond_0
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/0Q;->A04:J

    sget-object v2, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const-string v1, "p6YKYNxicnjzLIFANgsfPKErY7h8fvSp"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-wide v3
.end method

.method public final A9a(ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 4758
    packed-switch p1, :pswitch_data_0

    .line 4759
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/9Z;->A9a(ILjava/lang/Object;)V

    .line 4760
    :cond_0
    :goto_0
    return-void

    .line 4761
    :pswitch_1
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_0

    .line 4762
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0J:Lcom/facebook/ads/redexgen/X/8N;

    sget-object v1, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const-string v1, "XCf3J2AEJJ1Zd2j3qAi6tezJ2mG7"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v3, p2}, Lcom/facebook/ads/redexgen/X/8q;->A00(Lcom/facebook/ads/redexgen/X/8N;Ljava/lang/Object;)V

    goto :goto_0

    .line 4763
    :pswitch_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A09:Lcom/facebook/ads/redexgen/X/75;

    .line 4764
    goto :goto_0

    .line 4765
    :pswitch_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0J:Lcom/facebook/ads/redexgen/X/8N;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/8N;->AIX(I)V

    .line 4766
    goto :goto_0

    .line 4767
    :pswitch_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0J:Lcom/facebook/ads/redexgen/X/8N;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/8N;->AJ4(Z)V

    .line 4768
    goto :goto_0

    .line 4769
    :pswitch_5
    check-cast p2, Lcom/facebook/ads/redexgen/X/1P;

    .line 4770
    .local v0, "auxEffectInfo":Lcom/facebook/ads/redexgen/X/1P;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0J:Lcom/facebook/ads/redexgen/X/8N;

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/8N;->AIY(Lcom/facebook/ads/redexgen/X/1P;)V

    .line 4771
    goto :goto_0

    .line 4772
    .end local v0    # "auxEffectInfo":Lcom/facebook/ads/redexgen/X/1P;
    :pswitch_6
    check-cast p2, Lcom/facebook/ads/redexgen/X/oy;

    .line 4773
    .local v0, "audioAttributes":Lcom/facebook/ads/redexgen/X/oy;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0J:Lcom/facebook/ads/redexgen/X/8N;

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/8N;->AIW(Lcom/facebook/ads/redexgen/X/oy;)V

    .line 4774
    goto :goto_0

    .line 4775
    .end local v0    # "audioAttributes":Lcom/facebook/ads/redexgen/X/oy;
    :pswitch_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0J:Lcom/facebook/ads/redexgen/X/8N;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/8N;->setVolume(F)V

    .line 4776
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final AAG()Z
    .locals 1

    .line 4777
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/14;->AAG()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0J:Lcom/facebook/ads/redexgen/X/8N;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8N;->AAG()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AAV()Z
    .locals 4

    .line 4778
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0J:Lcom/facebook/ads/redexgen/X/8N;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8N;->A9g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/14;->AAV()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/0Q;->A0L:[Ljava/lang/String;

    const-string v1, "YZui0KIXZR8KzjI1EkPC1GaIUT4y"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AIt(Lcom/facebook/ads/redexgen/X/ob;)V
    .locals 1

    .line 4779
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A0J:Lcom/facebook/ads/redexgen/X/8N;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/8N;->AIt(Lcom/facebook/ads/redexgen/X/ob;)V

    .line 4780
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 3

    .line 4781
    const/4 v2, 0x0

    const/16 v1, 0x17

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0Q;->A07(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
