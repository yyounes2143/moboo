.class public final Lcom/facebook/ads/redexgen/X/ED;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/E1;->AFt(Lcom/facebook/ads/redexgen/X/eU;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:I

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/E1;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/eU;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/E1;Lcom/facebook/ads/redexgen/X/eU;II)V
    .locals 0

    .line 34584
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ED;->A03:Lcom/facebook/ads/redexgen/X/eU;

    iput p3, p0, Lcom/facebook/ads/redexgen/X/ED;->A00:I

    iput p4, p0, Lcom/facebook/ads/redexgen/X/ED;->A01:I

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 34585
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ED;->A03:Lcom/facebook/ads/redexgen/X/eU;

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A07:Lcom/facebook/ads/redexgen/X/eU;

    if-ne v1, v0, :cond_1

    .line 34586
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    sget-object v0, Lcom/facebook/ads/redexgen/X/UZ;->A0y:Lcom/facebook/ads/redexgen/X/UZ;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0P(Lcom/facebook/ads/redexgen/X/E1;Lcom/facebook/ads/redexgen/X/UZ;)V

    .line 34587
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E1;->A09(Lcom/facebook/ads/redexgen/X/E1;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A3b()V

    .line 34588
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E1;->A0A(Lcom/facebook/ads/redexgen/X/E1;)Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/E1;->A0D()Lcom/facebook/ads/redexgen/X/DO;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Te;->A02(Lcom/facebook/ads/redexgen/X/Td;)V

    .line 34589
    :cond_0
    :goto_0
    return-void

    .line 34590
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ED;->A03:Lcom/facebook/ads/redexgen/X/eU;

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A03:Lcom/facebook/ads/redexgen/X/eU;

    const/4 v3, 0x1

    if-ne v1, v0, :cond_2

    .line 34591
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    sget-object v0, Lcom/facebook/ads/redexgen/X/UZ;->A0t:Lcom/facebook/ads/redexgen/X/UZ;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0P(Lcom/facebook/ads/redexgen/X/E1;Lcom/facebook/ads/redexgen/X/UZ;)V

    .line 34592
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/E1;->A0Y(Lcom/facebook/ads/redexgen/X/E1;Z)Z

    .line 34593
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E1;->A0A(Lcom/facebook/ads/redexgen/X/E1;)Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/E1;->A0B()Lcom/facebook/ads/redexgen/X/DW;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Te;->A02(Lcom/facebook/ads/redexgen/X/Td;)V

    .line 34594
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ED;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0O(Lcom/facebook/ads/redexgen/X/E1;I)V

    goto :goto_0

    .line 34595
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ED;->A03:Lcom/facebook/ads/redexgen/X/eU;

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A06:Lcom/facebook/ads/redexgen/X/eU;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_3

    .line 34596
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    sget-object v0, Lcom/facebook/ads/redexgen/X/UZ;->A0s:Lcom/facebook/ads/redexgen/X/UZ;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0P(Lcom/facebook/ads/redexgen/X/E1;Lcom/facebook/ads/redexgen/X/UZ;)V

    .line 34597
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E1;->A09(Lcom/facebook/ads/redexgen/X/E1;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A3T()V

    .line 34598
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/E1;->A0Y(Lcom/facebook/ads/redexgen/X/E1;Z)Z

    .line 34599
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E1;->A08(Lcom/facebook/ads/redexgen/X/E1;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 34600
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E1;->A0A(Lcom/facebook/ads/redexgen/X/E1;)Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v3

    iget v2, p0, Lcom/facebook/ads/redexgen/X/ED;->A01:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/ED;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/3d;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/3d;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Te;->A02(Lcom/facebook/ads/redexgen/X/Td;)V

    .line 34601
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ED;->A01:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0O(Lcom/facebook/ads/redexgen/X/E1;I)V

    goto :goto_0

    .line 34602
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ED;->A03:Lcom/facebook/ads/redexgen/X/eU;

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A0A:Lcom/facebook/ads/redexgen/X/eU;

    if-ne v1, v0, :cond_5

    .line 34603
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E1;->A09(Lcom/facebook/ads/redexgen/X/E1;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1u(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 34604
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E1;->A09(Lcom/facebook/ads/redexgen/X/E1;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A0B()Lcom/facebook/ads/redexgen/X/Ue;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ue;->AFs()V

    .line 34605
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    sget-object v0, Lcom/facebook/ads/redexgen/X/UZ;->A0w:Lcom/facebook/ads/redexgen/X/UZ;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0P(Lcom/facebook/ads/redexgen/X/E1;Lcom/facebook/ads/redexgen/X/UZ;)V

    .line 34606
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E1;->A09(Lcom/facebook/ads/redexgen/X/E1;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A3i()V

    .line 34607
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E1;->A0A(Lcom/facebook/ads/redexgen/X/E1;)Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/E1;->A0C()Lcom/facebook/ads/redexgen/X/DQ;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Te;->A02(Lcom/facebook/ads/redexgen/X/Td;)V

    .line 34608
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E1;->A08(Lcom/facebook/ads/redexgen/X/E1;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 34609
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E1;->A0N(Lcom/facebook/ads/redexgen/X/E1;)V

    goto/16 :goto_0

    .line 34610
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ED;->A03:Lcom/facebook/ads/redexgen/X/eU;

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A05:Lcom/facebook/ads/redexgen/X/eU;

    if-ne v1, v0, :cond_6

    .line 34611
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    sget-object v0, Lcom/facebook/ads/redexgen/X/UZ;->A0v:Lcom/facebook/ads/redexgen/X/UZ;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0P(Lcom/facebook/ads/redexgen/X/E1;Lcom/facebook/ads/redexgen/X/UZ;)V

    .line 34612
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E1;->A09(Lcom/facebook/ads/redexgen/X/E1;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A3X()V

    .line 34613
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E1;->A0A(Lcom/facebook/ads/redexgen/X/E1;)Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/ED;->A00:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/3Y;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/3Y;-><init>(I)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Te;->A02(Lcom/facebook/ads/redexgen/X/Td;)V

    .line 34614
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E1;->A08(Lcom/facebook/ads/redexgen/X/E1;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 34615
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ED;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0O(Lcom/facebook/ads/redexgen/X/E1;I)V

    goto/16 :goto_0

    .line 34616
    :cond_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ED;->A03:Lcom/facebook/ads/redexgen/X/eU;

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A04:Lcom/facebook/ads/redexgen/X/eU;

    if-ne v1, v0, :cond_7

    .line 34617
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    sget-object v0, Lcom/facebook/ads/redexgen/X/UZ;->A0u:Lcom/facebook/ads/redexgen/X/UZ;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0P(Lcom/facebook/ads/redexgen/X/E1;Lcom/facebook/ads/redexgen/X/UZ;)V

    .line 34618
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E1;->A09(Lcom/facebook/ads/redexgen/X/E1;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A3U()V

    .line 34619
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E1;->A0A(Lcom/facebook/ads/redexgen/X/E1;)Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/E1;->A0F()Lcom/facebook/ads/redexgen/X/DI;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Te;->A02(Lcom/facebook/ads/redexgen/X/Td;)V

    .line 34620
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E1;->A08(Lcom/facebook/ads/redexgen/X/E1;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 34621
    :cond_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ED;->A03:Lcom/facebook/ads/redexgen/X/eU;

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A09:Lcom/facebook/ads/redexgen/X/eU;

    if-ne v1, v0, :cond_0

    .line 34622
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    sget-object v0, Lcom/facebook/ads/redexgen/X/UZ;->A0s:Lcom/facebook/ads/redexgen/X/UZ;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0P(Lcom/facebook/ads/redexgen/X/E1;Lcom/facebook/ads/redexgen/X/UZ;)V

    .line 34623
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E1;->A09(Lcom/facebook/ads/redexgen/X/E1;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A3d()V

    .line 34624
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/E1;->A0Y(Lcom/facebook/ads/redexgen/X/E1;Z)Z

    .line 34625
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E1;->A08(Lcom/facebook/ads/redexgen/X/E1;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 34626
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E1;->A0A(Lcom/facebook/ads/redexgen/X/E1;)Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v3

    iget v2, p0, Lcom/facebook/ads/redexgen/X/ED;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/ED;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/3d;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/3d;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Te;->A02(Lcom/facebook/ads/redexgen/X/Td;)V

    .line 34627
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/E1;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ED;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0O(Lcom/facebook/ads/redexgen/X/E1;I)V

    goto/16 :goto_0
.end method
