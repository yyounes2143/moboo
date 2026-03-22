.class public final Lcom/facebook/ads/redexgen/X/FO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/R6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/3r;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3r;)V
    .locals 0

    .line 36114
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FO;->A00:Lcom/facebook/ads/redexgen/X/3r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAA()Z
    .locals 1

    .line 36115
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FO;->A00:Lcom/facebook/ads/redexgen/X/3r;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3r;->A0U(Lcom/facebook/ads/redexgen/X/3r;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FO;->A00:Lcom/facebook/ads/redexgen/X/3r;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3r;->A0i()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
