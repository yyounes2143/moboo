.class public final Lcom/facebook/ads/redexgen/X/HE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Wc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/4Z;->A1E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4Z;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4Z;)V
    .locals 0

    .line 39292
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HE;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACp()V
    .locals 2

    .line 39293
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HE;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A1L()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39294
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HE;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0D(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v1

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    .line 39295
    :cond_0
    return-void
.end method

.method public final AEn(F)V
    .locals 0

    .line 39296
    return-void
.end method
