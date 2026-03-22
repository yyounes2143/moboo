.class public final Lcom/facebook/ads/redexgen/X/F0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/R6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/3q;->AAl(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/R0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/R0;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/3q;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3q;Lcom/facebook/ads/redexgen/X/R0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35358
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/F0;->A01:Lcom/facebook/ads/redexgen/X/3q;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/F0;->A00:Lcom/facebook/ads/redexgen/X/R0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAA()Z
    .locals 3

    .line 35359
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F0;->A01:Lcom/facebook/ads/redexgen/X/3q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NI;->A0b()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 35360
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F0;->A01:Lcom/facebook/ads/redexgen/X/3q;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F0;->A00:Lcom/facebook/ads/redexgen/X/R0;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NI;->A0a(Lcom/facebook/ads/redexgen/X/R0;)V

    .line 35361
    return v2

    .line 35362
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F0;->A01:Lcom/facebook/ads/redexgen/X/3q;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3q;->A0K(Lcom/facebook/ads/redexgen/X/3q;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35363
    return v2

    .line 35364
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F0;->A01:Lcom/facebook/ads/redexgen/X/3q;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3q;->A0L(Lcom/facebook/ads/redexgen/X/3q;)Z

    move-result v0

    return v0
.end method
