.class public Lcom/facebook/ads/redexgen/X/35;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/oA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static A0R:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

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

.field public A0G:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/facebook/ads/redexgen/X/oH;",
            "Lcom/facebook/ads/redexgen/X/oC;",
            ">;"
        }
    .end annotation
.end field

.field public A0H:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public A0I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A0J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A0K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A0L:Ljava/util/List;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "FEATURE_LOGIC"
        }
        value = "D56211926, support language flag in video track"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A0M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A0N:Z

.field public A0O:Z

.field public A0P:Z

.field public A0Q:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/35;->A0P()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10512
    const v2, 0x7fffffff

    iput v2, p0, Lcom/facebook/ads/redexgen/X/35;->A06:I

    .line 10513
    iput v2, p0, Lcom/facebook/ads/redexgen/X/35;->A05:I

    .line 10514
    iput v2, p0, Lcom/facebook/ads/redexgen/X/35;->A04:I

    .line 10515
    iput v2, p0, Lcom/facebook/ads/redexgen/X/35;->A03:I

    .line 10516
    iput v2, p0, Lcom/facebook/ads/redexgen/X/35;->A0F:I

    .line 10517
    iput v2, p0, Lcom/facebook/ads/redexgen/X/35;->A0E:I

    .line 10518
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0Q:Z

    .line 10519
    invoke-static {}, Lcom/facebook/ads/redexgen/X/i1;->A01()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0M:Ljava/util/List;

    .line 10520
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/35;->A0D:I

    .line 10521
    invoke-static {}, Lcom/facebook/ads/redexgen/X/i1;->A01()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0L:Ljava/util/List;

    .line 10522
    invoke-static {}, Lcom/facebook/ads/redexgen/X/i1;->A01()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0I:Ljava/util/List;

    .line 10523
    iput v1, p0, Lcom/facebook/ads/redexgen/X/35;->A0B:I

    .line 10524
    iput v2, p0, Lcom/facebook/ads/redexgen/X/35;->A02:I

    .line 10525
    iput v2, p0, Lcom/facebook/ads/redexgen/X/35;->A01:I

    .line 10526
    invoke-static {}, Lcom/facebook/ads/redexgen/X/i1;->A01()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0J:Ljava/util/List;

    .line 10527
    invoke-static {}, Lcom/facebook/ads/redexgen/X/i1;->A01()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0K:Ljava/util/List;

    .line 10528
    iput v1, p0, Lcom/facebook/ads/redexgen/X/35;->A0C:I

    .line 10529
    iput v1, p0, Lcom/facebook/ads/redexgen/X/35;->A00:I

    .line 10530
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/35;->A0P:Z

    .line 10531
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/35;->A0O:Z

    .line 10532
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/35;->A0N:Z

    .line 10533
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0G:Ljava/util/HashMap;

    .line 10534
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0H:Ljava/util/HashSet;

    .line 10535
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 10536
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/35;-><init>()V

    .line 10537
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/35;->A0n(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/35;

    .line 10538
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/35;->A0o(Landroid/content/Context;Z)Lcom/facebook/ads/redexgen/X/35;

    .line 10539
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 6

    .line 10540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10541
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oA;->A0Q()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/oA;->A0U:Lcom/facebook/ads/redexgen/X/oA;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/oA;->A06:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/35;->A06:I

    .line 10542
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oA;->A0R()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/oA;->A0U:Lcom/facebook/ads/redexgen/X/oA;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/oA;->A05:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/35;->A05:I

    .line 10543
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oA;->A0c()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/oA;->A0U:Lcom/facebook/ads/redexgen/X/oA;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/oA;->A04:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/35;->A04:I

    .line 10544
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oA;->A0k()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/oA;->A0U:Lcom/facebook/ads/redexgen/X/oA;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/oA;->A03:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/35;->A03:I

    .line 10545
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oA;->A0l()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/oA;->A0U:Lcom/facebook/ads/redexgen/X/oA;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/oA;->A0A:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0A:I

    .line 10546
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oA;->A0m()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/oA;->A0U:Lcom/facebook/ads/redexgen/X/oA;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/oA;->A09:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/35;->A09:I

    .line 10547
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oA;->A0n()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/oA;->A0U:Lcom/facebook/ads/redexgen/X/oA;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/oA;->A08:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/35;->A08:I

    .line 10548
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oA;->A0o()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/oA;->A0U:Lcom/facebook/ads/redexgen/X/oA;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/oA;->A07:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/35;->A07:I

    .line 10549
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oA;->A0p()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/oA;->A0U:Lcom/facebook/ads/redexgen/X/oA;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/oA;->A0F:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0F:I

    .line 10550
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oA;->A0q()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/oA;->A0U:Lcom/facebook/ads/redexgen/X/oA;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/oA;->A0E:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0E:I

    .line 10551
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oA;->A0S()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/oA;->A0U:Lcom/facebook/ads/redexgen/X/oA;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/oA;->A0Q:Z

    .line 10552
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0Q:Z

    .line 10553
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oA;->A0T()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v0, v4, [Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/j1;->A00(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 10554
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Am;->A07([Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0M:Ljava/util/List;

    .line 10555
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oA;->A0U()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/oA;->A0U:Lcom/facebook/ads/redexgen/X/oA;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/oA;->A0D:I

    .line 10556
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0D:I

    .line 10557
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oA;->A0V()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-array v0, v4, [Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/j1;->A00(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 10558
    .local v0, "preferredVideoLanguages1":[Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/35;->A0G([Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0L:Ljava/util/List;

    .line 10559
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oA;->A0W()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-array v0, v4, [Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/j1;->A00(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 10560
    .local v2, "preferredAudioLanguages1":[Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/35;->A0G([Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0I:Ljava/util/List;

    .line 10561
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oA;->A0X()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/oA;->A0U:Lcom/facebook/ads/redexgen/X/oA;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/oA;->A0B:I

    .line 10562
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0B:I

    .line 10563
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oA;->A0Y()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/oA;->A0U:Lcom/facebook/ads/redexgen/X/oA;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/oA;->A02:I

    .line 10564
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/35;->A02:I

    .line 10565
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oA;->A0Z()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/oA;->A0U:Lcom/facebook/ads/redexgen/X/oA;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/oA;->A01:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/35;->A01:I

    .line 10566
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oA;->A0a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-array v0, v4, [Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/j1;->A00(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 10567
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Am;->A07([Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0J:Ljava/util/List;

    .line 10568
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oA;->A0b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-array v0, v4, [Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/j1;->A00(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 10569
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/35;->A0G([Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0K:Ljava/util/List;

    .line 10570
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oA;->A0d()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/oA;->A0U:Lcom/facebook/ads/redexgen/X/oA;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/oA;->A0C:I

    .line 10571
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0C:I

    .line 10572
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oA;->A0e()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/oA;->A0U:Lcom/facebook/ads/redexgen/X/oA;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/oA;->A00:I

    .line 10573
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/35;->A00:I

    .line 10574
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oA;->A0f()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/oA;->A0U:Lcom/facebook/ads/redexgen/X/oA;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/oA;->A0P:Z

    .line 10575
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0P:Z

    .line 10576
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oA;->A0g()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/oA;->A0U:Lcom/facebook/ads/redexgen/X/oA;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/oA;->A0O:Z

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0O:Z

    .line 10577
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oA;->A0h()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/oA;->A0U:Lcom/facebook/ads/redexgen/X/oA;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/oA;->A0N:Z

    .line 10578
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0N:Z

    .line 10579
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oA;->A0i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 10580
    .local v3, "overrideBundleList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    if-nez v1, :cond_0

    .line 10581
    invoke-static {}, Lcom/facebook/ads/redexgen/X/i1;->A01()Ljava/util/List;

    move-result-object v5

    .line 10582
    .local v4, "overrideList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/TrackSelectionOverride;>;"
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0G:Ljava/util/HashMap;

    .line 10583
    const/4 v3, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 10584
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/oC;

    .line 10585
    .local p0, "override":Lcom/facebook/ads/redexgen/X/oC;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/35;->A0G:Ljava/util/HashMap;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/oC;->A00:Lcom/facebook/ads/redexgen/X/oH;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10586
    .end local p0    # "override":Lcom/facebook/ads/redexgen/X/oC;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 10587
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/oC;->A02:Lcom/facebook/ads/redexgen/X/1R;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/3S;->A01(Lcom/facebook/ads/redexgen/X/1R;Ljava/util/List;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v5

    goto :goto_0

    .line 10588
    .end local v5    # "i":I
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oA;->A0j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    new-array v0, v4, [I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/j1;->A00(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 10589
    .local v5, "disabledTrackTypeArray":[I
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0H:Ljava/util/HashSet;

    .line 10590
    array-length v2, v3

    :goto_2
    if-ge v4, v2, :cond_2

    aget v0, v3, v4

    .line 10591
    .local p1, "disabledTrackType":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/35;->A0H:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10592
    .end local p1    # "disabledTrackType":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 10593
    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/oA;)V
    .locals 0

    .line 10594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10595
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/35;->A0R(Lcom/facebook/ads/redexgen/X/oA;)V

    .line 10596
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/35;)I
    .locals 0

    .line 10597
    iget p0, p0, Lcom/facebook/ads/redexgen/X/35;->A06:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/35;)I
    .locals 0

    .line 10598
    iget p0, p0, Lcom/facebook/ads/redexgen/X/35;->A05:I

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/35;)I
    .locals 0

    .line 10599
    iget p0, p0, Lcom/facebook/ads/redexgen/X/35;->A04:I

    return p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/35;)I
    .locals 0

    .line 10600
    iget p0, p0, Lcom/facebook/ads/redexgen/X/35;->A03:I

    return p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/35;)I
    .locals 0

    .line 10601
    iget p0, p0, Lcom/facebook/ads/redexgen/X/35;->A0A:I

    return p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/35;)I
    .locals 0

    .line 10602
    iget p0, p0, Lcom/facebook/ads/redexgen/X/35;->A09:I

    return p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/35;)I
    .locals 0

    .line 10603
    iget p0, p0, Lcom/facebook/ads/redexgen/X/35;->A08:I

    return p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/35;)I
    .locals 0

    .line 10604
    iget p0, p0, Lcom/facebook/ads/redexgen/X/35;->A07:I

    return p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/35;)I
    .locals 0

    .line 10605
    iget p0, p0, Lcom/facebook/ads/redexgen/X/35;->A0F:I

    return p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/35;)I
    .locals 0

    .line 10606
    iget p0, p0, Lcom/facebook/ads/redexgen/X/35;->A0E:I

    return p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/35;)I
    .locals 0

    .line 10607
    iget p0, p0, Lcom/facebook/ads/redexgen/X/35;->A0D:I

    return p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/35;)I
    .locals 0

    .line 10608
    iget p0, p0, Lcom/facebook/ads/redexgen/X/35;->A0B:I

    return p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/35;)I
    .locals 0

    .line 10609
    iget p0, p0, Lcom/facebook/ads/redexgen/X/35;->A02:I

    return p0
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/35;)I
    .locals 0

    .line 10610
    iget p0, p0, Lcom/facebook/ads/redexgen/X/35;->A01:I

    return p0
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/35;)I
    .locals 0

    .line 10611
    iget p0, p0, Lcom/facebook/ads/redexgen/X/35;->A0C:I

    return p0
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/35;)I
    .locals 0

    .line 10612
    iget p0, p0, Lcom/facebook/ads/redexgen/X/35;->A00:I

    return p0
.end method

.method public static A0G([Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Am;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/ads/redexgen/X/Am<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10613
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Am;->A01()Lcom/facebook/ads/redexgen/X/1h;

    move-result-object v4

    .line 10614
    .local v0, "listBuilder":Lcom/facebook/ads/redexgen/X/1h;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, v3, v1

    .line 10615
    .local v4, "language":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/1h;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/1h;

    .line 10616
    .end local v4    # "language":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10617
    :cond_0
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/1h;->A05()Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    return-object v0
.end method

.method public static A0H(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/35;->A0R:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x22

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/35;)Ljava/util/HashMap;
    .locals 0

    .line 10618
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/35;->A0G:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/35;)Ljava/util/HashSet;
    .locals 0

    .line 10619
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/35;->A0H:Ljava/util/HashSet;

    return-object p0
.end method

.method public static synthetic A0K(Lcom/facebook/ads/redexgen/X/35;)Ljava/util/List;
    .locals 0

    .line 10620
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/35;->A0M:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic A0L(Lcom/facebook/ads/redexgen/X/35;)Ljava/util/List;
    .locals 0

    .line 10621
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/35;->A0L:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic A0M(Lcom/facebook/ads/redexgen/X/35;)Ljava/util/List;
    .locals 0

    .line 10622
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/35;->A0I:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic A0N(Lcom/facebook/ads/redexgen/X/35;)Ljava/util/List;
    .locals 0

    .line 10623
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/35;->A0J:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic A0O(Lcom/facebook/ads/redexgen/X/35;)Ljava/util/List;
    .locals 0

    .line 10624
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/35;->A0K:Ljava/util/List;

    return-object p0
.end method

.method public static A0P()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/35;->A0R:[B

    return-void

    :array_0
    .array-data 1
        0x3ft
        0x3dt
        0x2ct
        0x28t
        0x35t
        0x33t
        0x32t
        0x35t
        0x32t
        0x3bt
    .end array-data
.end method

.method private A0Q(Landroid/content/Context;)V
    .locals 3

    .line 10625
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x17

    if-ge v1, v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10626
    return-void

    .line 10627
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/35;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/CaptioningManager;

    .line 10628
    .local v0, "captioningManager":Landroid/view/accessibility/CaptioningManager;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10629
    .end local v1
    :cond_1
    return-void

    .line 10630
    :cond_2
    const/16 v0, 0x440

    iput v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0C:I

    .line 10631
    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 10632
    .local v1, "preferredLocale":Ljava/util/Locale;
    if-eqz v0, :cond_3

    .line 10633
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0o(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Am;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0K:Ljava/util/List;

    .line 10634
    :cond_3
    return-void
.end method

.method private A0R(Lcom/facebook/ads/redexgen/X/oA;)V
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "preferredVideoMimeTypes",
            "preferredAudioLanguages",
            "preferredAudioMimeTypes",
            "preferredTextLanguages",
            "overrides",
            "disabledTrackTypes"
        }
    .end annotation

    .line 10635
    iget v0, p1, Lcom/facebook/ads/redexgen/X/oA;->A06:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/35;->A06:I

    .line 10636
    iget v0, p1, Lcom/facebook/ads/redexgen/X/oA;->A05:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/35;->A05:I

    .line 10637
    iget v0, p1, Lcom/facebook/ads/redexgen/X/oA;->A04:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/35;->A04:I

    .line 10638
    iget v0, p1, Lcom/facebook/ads/redexgen/X/oA;->A03:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/35;->A03:I

    .line 10639
    iget v0, p1, Lcom/facebook/ads/redexgen/X/oA;->A0A:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0A:I

    .line 10640
    iget v0, p1, Lcom/facebook/ads/redexgen/X/oA;->A09:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/35;->A09:I

    .line 10641
    iget v0, p1, Lcom/facebook/ads/redexgen/X/oA;->A08:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/35;->A08:I

    .line 10642
    iget v0, p1, Lcom/facebook/ads/redexgen/X/oA;->A07:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/35;->A07:I

    .line 10643
    iget v0, p1, Lcom/facebook/ads/redexgen/X/oA;->A0F:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0F:I

    .line 10644
    iget v0, p1, Lcom/facebook/ads/redexgen/X/oA;->A0E:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0E:I

    .line 10645
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/oA;->A0Q:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0Q:Z

    .line 10646
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/oA;->A0M:Ljava/util/List;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0M:Ljava/util/List;

    .line 10647
    iget v0, p1, Lcom/facebook/ads/redexgen/X/oA;->A0D:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0D:I

    .line 10648
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/oA;->A0L:Ljava/util/List;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0L:Ljava/util/List;

    .line 10649
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/oA;->A0I:Ljava/util/List;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0I:Ljava/util/List;

    .line 10650
    iget v0, p1, Lcom/facebook/ads/redexgen/X/oA;->A0B:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0B:I

    .line 10651
    iget v0, p1, Lcom/facebook/ads/redexgen/X/oA;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/35;->A02:I

    .line 10652
    iget v0, p1, Lcom/facebook/ads/redexgen/X/oA;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/35;->A01:I

    .line 10653
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/oA;->A0J:Ljava/util/List;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0J:Ljava/util/List;

    .line 10654
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/oA;->A0K:Ljava/util/List;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0K:Ljava/util/List;

    .line 10655
    iget v0, p1, Lcom/facebook/ads/redexgen/X/oA;->A0C:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0C:I

    .line 10656
    iget v0, p1, Lcom/facebook/ads/redexgen/X/oA;->A00:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/35;->A00:I

    .line 10657
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/oA;->A0P:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0P:Z

    .line 10658
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/oA;->A0O:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0O:Z

    .line 10659
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/oA;->A0N:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0N:Z

    .line 10660
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/oA;->A0H:Lcom/facebook/ads/redexgen/X/Al;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0H:Ljava/util/HashSet;

    .line 10661
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/oA;->A0G:Lcom/facebook/ads/redexgen/X/mj;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/35;->A0G:Ljava/util/HashMap;

    .line 10662
    return-void
.end method

.method public static synthetic A0S(Lcom/facebook/ads/redexgen/X/35;)Z
    .locals 0

    .line 10663
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/35;->A0Q:Z

    return p0
.end method

.method public static synthetic A0T(Lcom/facebook/ads/redexgen/X/35;)Z
    .locals 0

    .line 10664
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/35;->A0P:Z

    return p0
.end method

.method public static synthetic A0U(Lcom/facebook/ads/redexgen/X/35;)Z
    .locals 0

    .line 10665
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/35;->A0O:Z

    return p0
.end method

.method public static synthetic A0V(Lcom/facebook/ads/redexgen/X/35;)Z
    .locals 0

    .line 10666
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/35;->A0N:Z

    return p0
.end method


# virtual methods
.method public A0W(Lcom/facebook/ads/redexgen/X/oA;)Lcom/facebook/ads/redexgen/X/35;
    .locals 0

    .line 10667
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/35;->A0R(Lcom/facebook/ads/redexgen/X/oA;)V

    .line 10668
    return-object p0
.end method

.method public A0m(IIZ)Lcom/facebook/ads/redexgen/X/35;
    .locals 0

    .line 10669
    iput p1, p0, Lcom/facebook/ads/redexgen/X/35;->A0F:I

    .line 10670
    iput p2, p0, Lcom/facebook/ads/redexgen/X/35;->A0E:I

    .line 10671
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/35;->A0Q:Z

    .line 10672
    return-object p0
.end method

.method public A0n(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/35;
    .locals 2

    .line 10673
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_0

    .line 10674
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/35;->A0Q(Landroid/content/Context;)V

    .line 10675
    :cond_0
    return-object p0
.end method

.method public A0o(Landroid/content/Context;Z)Lcom/facebook/ads/redexgen/X/35;
    .locals 2

    .line 10676
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/4a;->A0W(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 10677
    .local v0, "viewportSize":Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v0, p2}, Lcom/facebook/ads/redexgen/X/35;->A0m(IIZ)Lcom/facebook/ads/redexgen/X/35;

    move-result-object v0

    return-object v0
.end method

.method public A0p()Lcom/facebook/ads/redexgen/X/oA;
    .locals 1

    .line 10678
    new-instance v0, Lcom/facebook/ads/redexgen/X/oA;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/oA;-><init>(Lcom/facebook/ads/redexgen/X/35;)V

    return-object v0
.end method
