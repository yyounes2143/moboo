.class public final Lcom/facebook/ads/redexgen/X/gm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/SN;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:Lcom/facebook/ads/AdExperienceType;

.field public A03:Lcom/facebook/ads/RewardData;

.field public A04:Lcom/facebook/ads/RewardedVideoAdListener;

.field public A05:Ljava/lang/String;

.field public A06:Ljava/lang/String;

.field public A07:Ljava/lang/String;

.field public A08:Z

.field public A09:Lcom/facebook/ads/Ad;

.field public A0A:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/Ad;",
            ">;"
        }
    .end annotation
.end field

.field public final A0B:Lcom/facebook/ads/redexgen/X/dL;

.field public final A0C:Lcom/facebook/ads/redexgen/X/TL;

.field public final A0D:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;Lcom/facebook/ads/Ad;Lcom/facebook/ads/redexgen/X/TL;)V
    .locals 2

    .line 83615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83616
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/gm;->A00:I

    .line 83617
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/gm;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    .line 83618
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/gm;->A0D:Ljava/lang/String;

    .line 83619
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/gm;->A09:Lcom/facebook/ads/Ad;

    .line 83620
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gm;->A0A:Ljava/lang/ref/WeakReference;

    .line 83621
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/gm;->A0C:Lcom/facebook/ads/redexgen/X/TL;

    .line 83622
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/gm;->A01:J

    .line 83623
    invoke-virtual {p1, p0}, Lcom/facebook/ads/redexgen/X/dL;->A0N(Lcom/facebook/ads/redexgen/X/SN;)V

    .line 83624
    return-void
.end method

.method private final A00()Lcom/facebook/ads/RewardedVideoAdListener;
    .locals 1

    .line 83625
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gm;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    return-object v0
.end method


# virtual methods
.method public final A01()Lcom/facebook/ads/redexgen/X/dL;
    .locals 1

    .line 83626
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gm;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    return-object v0
.end method

.method public final A02(Lcom/facebook/ads/Ad;)V
    .locals 1

    .line 83627
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gm;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A0u(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83628
    return-void

    .line 83629
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/gm;->A09:Lcom/facebook/ads/Ad;

    .line 83630
    return-void
.end method

.method public final A6c()Lcom/facebook/ads/Ad;
    .locals 1

    .line 83631
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gm;->A09:Lcom/facebook/ads/Ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gm;->A09:Lcom/facebook/ads/Ad;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gm;->A0A:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/Ad;

    goto :goto_0
.end method

.method public final bridge synthetic A6g()Lcom/facebook/ads/AdListener;
    .locals 1

    .line 83632
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/gm;->A00()Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    return-object v0
.end method
