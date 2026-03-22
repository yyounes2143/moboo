.class public final Lcom/facebook/ads/redexgen/X/P7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/PH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/PH;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/PH;)V
    .locals 0

    .line 56841
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/P7;->A00:Lcom/facebook/ads/redexgen/X/PH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 56842
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/P7;->A00:Lcom/facebook/ads/redexgen/X/PH;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PH;->setScrollState(I)V

    .line 56843
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P7;->A00:Lcom/facebook/ads/redexgen/X/PH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PH;->A0f()V

    .line 56844
    return-void
.end method
