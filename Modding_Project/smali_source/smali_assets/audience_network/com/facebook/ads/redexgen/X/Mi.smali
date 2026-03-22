.class public final Lcom/facebook/ads/redexgen/X/Mi;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/iA;

.field public A01:Lcom/facebook/ads/redexgen/X/Mh;

.field public A02:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1376
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "dggRIwntGnoxWZ7BDQUg45Sl6NQgoMuN"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "38c9H60yn2P1pt17"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "STlEyQPStERy8tSXGvH8F24LWNUxdBhq"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "hCwe"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "bKRxwQpiW0PmVHVfGUn2RavmyNEFkRji"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "VPPe2MO9HED0sxCZzVAB8cvkabJHsXeP"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "uH31h0PRXTyVkIOgrCb5PcgaQIfZ1AyX"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pPlbIWWtmQkYN3MHTwcOdVUNUzBLXTby"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Mi;->A03:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/iA;Lcom/facebook/ads/redexgen/X/Mh;)V
    .locals 0

    .line 52531
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 52532
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Mi;->A00:Lcom/facebook/ads/redexgen/X/iA;

    .line 52533
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Mi;->A01:Lcom/facebook/ads/redexgen/X/Mh;

    .line 52534
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Mi;->A02:Ljava/lang/String;

    .line 52535
    return-void
.end method


# virtual methods
.method public final A00()Landroid/content/IntentFilter;
    .locals 3

    .line 52536
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 52537
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/facebook/ads/redexgen/X/dh;->A06:Lcom/facebook/ads/redexgen/X/dh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mi;->A02:Ljava/lang/String;

    .line 52538
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/dh;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52539
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52540
    sget-object v1, Lcom/facebook/ads/redexgen/X/dh;->A09:Lcom/facebook/ads/redexgen/X/dh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mi;->A02:Ljava/lang/String;

    .line 52541
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/dh;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52542
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52543
    sget-object v1, Lcom/facebook/ads/redexgen/X/dh;->A04:Lcom/facebook/ads/redexgen/X/dh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mi;->A02:Ljava/lang/String;

    .line 52544
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/dh;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52545
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52546
    sget-object v1, Lcom/facebook/ads/redexgen/X/dh;->A0A:Lcom/facebook/ads/redexgen/X/dh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mi;->A02:Ljava/lang/String;

    .line 52547
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/dh;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52548
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52549
    sget-object v1, Lcom/facebook/ads/redexgen/X/dh;->A05:Lcom/facebook/ads/redexgen/X/dh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mi;->A02:Ljava/lang/String;

    .line 52550
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/dh;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52551
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52552
    sget-object v1, Lcom/facebook/ads/redexgen/X/dh;->A0C:Lcom/facebook/ads/redexgen/X/dh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mi;->A02:Ljava/lang/String;

    .line 52553
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/dh;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52554
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52555
    sget-object v1, Lcom/facebook/ads/redexgen/X/dh;->A0B:Lcom/facebook/ads/redexgen/X/dh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mi;->A02:Ljava/lang/String;

    .line 52556
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/dh;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52557
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52558
    sget-object v1, Lcom/facebook/ads/redexgen/X/dh;->A03:Lcom/facebook/ads/redexgen/X/dh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mi;->A02:Ljava/lang/String;

    .line 52559
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/dh;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52560
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52561
    return-object v2
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 52562
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 52563
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/facebook/ads/redexgen/X/dh;->A06:Lcom/facebook/ads/redexgen/X/dh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mi;->A02:Ljava/lang/String;

    .line 52564
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/dh;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52565
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52566
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mi;->A01:Lcom/facebook/ads/redexgen/X/Mh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mi;->A00:Lcom/facebook/ads/redexgen/X/iA;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Mh;->AF6(Lcom/facebook/ads/redexgen/X/iA;)V

    .line 52567
    :cond_0
    :goto_0
    return-void

    .line 52568
    :cond_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/dh;->A09:Lcom/facebook/ads/redexgen/X/dh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mi;->A02:Ljava/lang/String;

    .line 52569
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/dh;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52570
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52571
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/U7;->A1t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52572
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Mi;->A01:Lcom/facebook/ads/redexgen/X/Mh;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mi;->A00:Lcom/facebook/ads/redexgen/X/iA;

    sget-object v0, Lcom/facebook/ads/AdError;->AD_PRESENTATION_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Mh;->AF7(Lcom/facebook/ads/redexgen/X/iA;Lcom/facebook/ads/AdError;)V

    goto :goto_0

    .line 52573
    :cond_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Mi;->A01:Lcom/facebook/ads/redexgen/X/Mh;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mi;->A00:Lcom/facebook/ads/redexgen/X/iA;

    sget-object v0, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Mh;->AF7(Lcom/facebook/ads/redexgen/X/iA;Lcom/facebook/ads/AdError;)V

    goto :goto_0

    .line 52574
    :cond_3
    sget-object v1, Lcom/facebook/ads/redexgen/X/dh;->A04:Lcom/facebook/ads/redexgen/X/dh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mi;->A02:Ljava/lang/String;

    .line 52575
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/dh;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52576
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 52577
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mi;->A01:Lcom/facebook/ads/redexgen/X/Mh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mi;->A00:Lcom/facebook/ads/redexgen/X/iA;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Mh;->AF3(Lcom/facebook/ads/redexgen/X/iA;)V

    goto :goto_0

    .line 52578
    :cond_4
    sget-object v1, Lcom/facebook/ads/redexgen/X/dh;->A0A:Lcom/facebook/ads/redexgen/X/dh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mi;->A02:Ljava/lang/String;

    .line 52579
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/dh;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52580
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 52581
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mi;->A01:Lcom/facebook/ads/redexgen/X/Mh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mi;->A00:Lcom/facebook/ads/redexgen/X/iA;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Mh;->AF5(Lcom/facebook/ads/redexgen/X/iA;)V

    goto :goto_0

    .line 52582
    :cond_5
    sget-object v1, Lcom/facebook/ads/redexgen/X/dh;->A05:Lcom/facebook/ads/redexgen/X/dh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mi;->A02:Ljava/lang/String;

    .line 52583
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/dh;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52584
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Mi;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x58

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/Mi;->A03:[Ljava/lang/String;

    const-string v1, "gVjZHTAPXXqW3paCpGTUxeCgOEd4dSxo"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v4, :cond_7

    .line 52585
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mi;->A01:Lcom/facebook/ads/redexgen/X/Mh;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Mh;->onRewardedVideoClosed()V

    goto/16 :goto_0

    .line 52586
    :cond_7
    sget-object v1, Lcom/facebook/ads/redexgen/X/dh;->A0B:Lcom/facebook/ads/redexgen/X/dh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mi;->A02:Ljava/lang/String;

    .line 52587
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/dh;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52588
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 52589
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Mi;->A01:Lcom/facebook/ads/redexgen/X/Mh;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Mi;->A00:Lcom/facebook/ads/redexgen/X/iA;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Mi;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_8

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/Mi;->A03:[Ljava/lang/String;

    const-string v1, "QgP7tKiwXm5h6JnagwUE7gN68w8IQRlz"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-interface {v4, v3}, Lcom/facebook/ads/redexgen/X/Mh;->AF1(Lcom/facebook/ads/redexgen/X/iA;)V

    goto/16 :goto_0

    .line 52590
    :cond_9
    sget-object v1, Lcom/facebook/ads/redexgen/X/dh;->A0C:Lcom/facebook/ads/redexgen/X/dh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mi;->A02:Ljava/lang/String;

    .line 52591
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/dh;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52592
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 52593
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mi;->A01:Lcom/facebook/ads/redexgen/X/Mh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mi;->A00:Lcom/facebook/ads/redexgen/X/iA;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Mh;->AF2(Lcom/facebook/ads/redexgen/X/iA;)V

    goto/16 :goto_0

    .line 52594
    :cond_a
    sget-object v5, Lcom/facebook/ads/redexgen/X/dh;->A03:Lcom/facebook/ads/redexgen/X/dh;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Mi;->A02:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Mi;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_b

    .line 52595
    sget-object v2, Lcom/facebook/ads/redexgen/X/Mi;->A03:[Ljava/lang/String;

    const-string v1, "4VvB4uonEo2HdG2J"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v5, v4}, Lcom/facebook/ads/redexgen/X/dh;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52596
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52597
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mi;->A01:Lcom/facebook/ads/redexgen/X/Mh;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Mh;->onRewardedVideoActivityDestroyed()V

    goto/16 :goto_0

    .line 52598
    :cond_b
    invoke-virtual {v5, v4}, Lcom/facebook/ads/redexgen/X/dh;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52599
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1
.end method
