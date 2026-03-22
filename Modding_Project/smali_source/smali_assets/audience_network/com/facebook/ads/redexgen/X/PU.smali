.class public final Lcom/facebook/ads/redexgen/X/PU;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/PT;,
        Lcom/facebook/ads/redexgen/X/6k;,
        Lcom/facebook/ads/internal/androidx/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl;,
        Lcom/facebook/ads/redexgen/X/gO;
    }
.end annotation


# static fields
.field public static final A01:Lcom/facebook/ads/redexgen/X/PT;


# instance fields
.field public final A00:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1503
    new-instance v0, Lcom/facebook/ads/redexgen/X/6k;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/6k;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/PU;->A01:Lcom/facebook/ads/redexgen/X/PT;

    .line 1504
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58304
    sget-object v0, Lcom/facebook/ads/redexgen/X/PU;->A01:Lcom/facebook/ads/redexgen/X/PT;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/PT;->AC2(Lcom/facebook/ads/redexgen/X/PU;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PU;->A00:Ljava/lang/Object;

    .line 58305
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 58306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58307
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PU;->A00:Ljava/lang/Object;

    .line 58308
    return-void
.end method


# virtual methods
.method public final A00(I)Lcom/facebook/ads/redexgen/X/PS;
    .locals 1

    .line 58309
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A01(I)Lcom/facebook/ads/redexgen/X/PS;
    .locals 1

    .line 58310
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A02()Ljava/lang/Object;
    .locals 1

    .line 58311
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PU;->A00:Ljava/lang/Object;

    return-object v0
.end method

.method public final A03(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/PS;",
            ">;"
        }
    .end annotation

    .line 58312
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A04(IILandroid/os/Bundle;)Z
    .locals 1

    .line 58313
    const/4 v0, 0x0

    return v0
.end method
