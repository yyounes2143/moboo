.class public final Lcom/facebook/ads/redexgen/X/dF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ef;-><init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/util/List;ILcom/facebook/ads/redexgen/X/6g;Lcom/facebook/ads/redexgen/X/KE;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ef;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ef;)V
    .locals 0

    .line 79171
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/dF;->A00:Lcom/facebook/ads/redexgen/X/Ef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vl;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v3, p0

    .line 79172
    .local v0, "this":Lcom/facebook/ads/redexgen/X/dF;
    :try_start_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/dF;->A00:Lcom/facebook/ads/redexgen/X/Ef;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ef;->A0B()I

    move-result v0

    if-nez v0, :cond_1

    .line 79173
    return-void

    .line 79174
    :cond_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/dF;->A00:Lcom/facebook/ads/redexgen/X/Ef;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ef;->A02(Lcom/facebook/ads/redexgen/X/Ef;)Lcom/facebook/ads/redexgen/X/6g;

    move-result-object v2

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/dF;->A00:Lcom/facebook/ads/redexgen/X/Ef;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ef;->A00(Lcom/facebook/ads/redexgen/X/Ef;)I

    move-result v1

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6g;->scrollBy(II)V

    .line 79175
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/dF;->A00:Lcom/facebook/ads/redexgen/X/Ef;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ef;->A01(Lcom/facebook/ads/redexgen/X/Ef;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v0, 0x10

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79176
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/dF;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Vl;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
