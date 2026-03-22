.class public final Lcom/facebook/ads/redexgen/X/3C;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/o2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public A00:F

.field public A01:F

.field public A02:F

.field public A03:F

.field public A04:F

.field public A05:F

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:I

.field public A0A:I

.field public A0B:I

.field public A0C:Landroid/graphics/Bitmap;

.field public A0D:Landroid/text/Layout$Alignment;

.field public A0E:Landroid/text/Layout$Alignment;

.field public A0F:Ljava/lang/CharSequence;

.field public A0G:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10703
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A0F:Ljava/lang/CharSequence;

    .line 10704
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A0C:Landroid/graphics/Bitmap;

    .line 10705
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A0E:Landroid/text/Layout$Alignment;

    .line 10706
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A0D:Landroid/text/Layout$Alignment;

    .line 10707
    const v0, -0x800001

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A01:F

    .line 10708
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/facebook/ads/redexgen/X/3C;->A07:I

    .line 10709
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3C;->A06:I

    .line 10710
    iput v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A02:F

    .line 10711
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3C;->A08:I

    .line 10712
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3C;->A09:I

    .line 10713
    iput v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A05:F

    .line 10714
    iput v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A04:F

    .line 10715
    iput v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A00:F

    .line 10716
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A0G:Z

    .line 10717
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A0B:I

    .line 10718
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3C;->A0A:I

    .line 10719
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/o2;)V
    .locals 1

    .line 10720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10721
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/o2;->A0F:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A0F:Ljava/lang/CharSequence;

    .line 10722
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/o2;->A0C:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A0C:Landroid/graphics/Bitmap;

    .line 10723
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/o2;->A0E:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A0E:Landroid/text/Layout$Alignment;

    .line 10724
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/o2;->A0D:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A0D:Landroid/text/Layout$Alignment;

    .line 10725
    iget v0, p1, Lcom/facebook/ads/redexgen/X/o2;->A01:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A01:F

    .line 10726
    iget v0, p1, Lcom/facebook/ads/redexgen/X/o2;->A07:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A07:I

    .line 10727
    iget v0, p1, Lcom/facebook/ads/redexgen/X/o2;->A06:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A06:I

    .line 10728
    iget v0, p1, Lcom/facebook/ads/redexgen/X/o2;->A02:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A02:F

    .line 10729
    iget v0, p1, Lcom/facebook/ads/redexgen/X/o2;->A08:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A08:I

    .line 10730
    iget v0, p1, Lcom/facebook/ads/redexgen/X/o2;->A09:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A09:I

    .line 10731
    iget v0, p1, Lcom/facebook/ads/redexgen/X/o2;->A05:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A05:F

    .line 10732
    iget v0, p1, Lcom/facebook/ads/redexgen/X/o2;->A04:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A04:F

    .line 10733
    iget v0, p1, Lcom/facebook/ads/redexgen/X/o2;->A00:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A00:F

    .line 10734
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/o2;->A0G:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A0G:Z

    .line 10735
    iget v0, p1, Lcom/facebook/ads/redexgen/X/o2;->A0B:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A0B:I

    .line 10736
    iget v0, p1, Lcom/facebook/ads/redexgen/X/o2;->A0A:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A0A:I

    .line 10737
    iget v0, p1, Lcom/facebook/ads/redexgen/X/o2;->A03:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A03:F

    .line 10738
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/o2;Lcom/facebook/ads/redexgen/X/3A;)V
    .locals 0

    .line 10739
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3C;-><init>(Lcom/facebook/ads/redexgen/X/o2;)V

    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 10740
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A06:I

    return v0
.end method

.method public final A01()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 10741
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A08:I

    return v0
.end method

.method public final A02()Lcom/facebook/ads/redexgen/X/3C;
    .locals 1

    .line 10742
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A0G:Z

    .line 10743
    return-object p0
.end method

.method public final A03(F)Lcom/facebook/ads/redexgen/X/3C;
    .locals 0

    .line 10744
    iput p1, p0, Lcom/facebook/ads/redexgen/X/3C;->A00:F

    .line 10745
    return-object p0
.end method

.method public final A04(F)Lcom/facebook/ads/redexgen/X/3C;
    .locals 0

    .line 10746
    iput p1, p0, Lcom/facebook/ads/redexgen/X/3C;->A02:F

    .line 10747
    return-object p0
.end method

.method public final A05(F)Lcom/facebook/ads/redexgen/X/3C;
    .locals 0

    .line 10748
    iput p1, p0, Lcom/facebook/ads/redexgen/X/3C;->A03:F

    .line 10749
    return-object p0
.end method

.method public final A06(F)Lcom/facebook/ads/redexgen/X/3C;
    .locals 0

    .line 10750
    iput p1, p0, Lcom/facebook/ads/redexgen/X/3C;->A04:F

    .line 10751
    return-object p0
.end method

.method public final A07(FI)Lcom/facebook/ads/redexgen/X/3C;
    .locals 0

    .line 10752
    iput p1, p0, Lcom/facebook/ads/redexgen/X/3C;->A01:F

    .line 10753
    iput p2, p0, Lcom/facebook/ads/redexgen/X/3C;->A07:I

    .line 10754
    return-object p0
.end method

.method public final A08(FI)Lcom/facebook/ads/redexgen/X/3C;
    .locals 0

    .line 10755
    iput p1, p0, Lcom/facebook/ads/redexgen/X/3C;->A05:F

    .line 10756
    iput p2, p0, Lcom/facebook/ads/redexgen/X/3C;->A09:I

    .line 10757
    return-object p0
.end method

.method public final A09(I)Lcom/facebook/ads/redexgen/X/3C;
    .locals 0

    .line 10758
    iput p1, p0, Lcom/facebook/ads/redexgen/X/3C;->A06:I

    .line 10759
    return-object p0
.end method

.method public final A0A(I)Lcom/facebook/ads/redexgen/X/3C;
    .locals 0

    .line 10760
    iput p1, p0, Lcom/facebook/ads/redexgen/X/3C;->A08:I

    .line 10761
    return-object p0
.end method

.method public final A0B(I)Lcom/facebook/ads/redexgen/X/3C;
    .locals 0

    .line 10762
    iput p1, p0, Lcom/facebook/ads/redexgen/X/3C;->A0A:I

    .line 10763
    return-object p0
.end method

.method public final A0C(I)Lcom/facebook/ads/redexgen/X/3C;
    .locals 1

    .line 10764
    iput p1, p0, Lcom/facebook/ads/redexgen/X/3C;->A0B:I

    .line 10765
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A0G:Z

    .line 10766
    return-object p0
.end method

.method public final A0D(Landroid/graphics/Bitmap;)Lcom/facebook/ads/redexgen/X/3C;
    .locals 0

    .line 10767
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3C;->A0C:Landroid/graphics/Bitmap;

    .line 10768
    return-object p0
.end method

.method public final A0E(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/3C;
    .locals 0

    .line 10769
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3C;->A0D:Landroid/text/Layout$Alignment;

    .line 10770
    return-object p0
.end method

.method public final A0F(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/3C;
    .locals 0

    .line 10771
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3C;->A0E:Landroid/text/Layout$Alignment;

    .line 10772
    return-object p0
.end method

.method public final A0G(Ljava/lang/CharSequence;)Lcom/facebook/ads/redexgen/X/3C;
    .locals 0

    .line 10773
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3C;->A0F:Ljava/lang/CharSequence;

    .line 10774
    return-object p0
.end method

.method public final A0H()Lcom/facebook/ads/redexgen/X/o2;
    .locals 35

    .line 10775
    move-object/from16 v0, p0

    new-instance v16, Lcom/facebook/ads/redexgen/X/o2;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/3C;->A0F:Ljava/lang/CharSequence;

    move-object/from16 v17, v1

    iget-object v15, v0, Lcom/facebook/ads/redexgen/X/3C;->A0E:Landroid/text/Layout$Alignment;

    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/3C;->A0D:Landroid/text/Layout$Alignment;

    iget-object v13, v0, Lcom/facebook/ads/redexgen/X/3C;->A0C:Landroid/graphics/Bitmap;

    iget v12, v0, Lcom/facebook/ads/redexgen/X/3C;->A01:F

    iget v11, v0, Lcom/facebook/ads/redexgen/X/3C;->A07:I

    iget v10, v0, Lcom/facebook/ads/redexgen/X/3C;->A06:I

    iget v9, v0, Lcom/facebook/ads/redexgen/X/3C;->A02:F

    iget v8, v0, Lcom/facebook/ads/redexgen/X/3C;->A08:I

    iget v7, v0, Lcom/facebook/ads/redexgen/X/3C;->A09:I

    iget v6, v0, Lcom/facebook/ads/redexgen/X/3C;->A05:F

    iget v5, v0, Lcom/facebook/ads/redexgen/X/3C;->A04:F

    iget v4, v0, Lcom/facebook/ads/redexgen/X/3C;->A00:F

    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/3C;->A0G:Z

    move-object/from16 v16, v16

    iget v2, v0, Lcom/facebook/ads/redexgen/X/3C;->A0B:I

    iget v1, v0, Lcom/facebook/ads/redexgen/X/3C;->A0A:I

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3C;->A03:F

    const/16 v34, 0x0

    move/from16 v30, v3

    move/from16 v31, v2

    move/from16 v32, v1

    move/from16 v33, v0

    move/from16 v28, v5

    move/from16 v29, v4

    move/from16 v26, v7

    move/from16 v27, v6

    move/from16 v24, v9

    move/from16 v25, v8

    move/from16 v22, v11

    move/from16 v23, v10

    move-object/from16 v20, v13

    move/from16 v21, v12

    move-object/from16 v18, v15

    move-object/from16 v19, v14

    move-object/from16 v17, v17

    invoke-direct/range {v16 .. v34}, Lcom/facebook/ads/redexgen/X/o2;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLcom/facebook/ads/redexgen/X/3A;)V

    return-object v16
.end method

.method public final A0I()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 10776
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A0F:Ljava/lang/CharSequence;

    return-object v0
.end method
