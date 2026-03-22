.class public final Lcom/facebook/ads/redexgen/X/pn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/pm;-><init>(Lcom/facebook/ads/redexgen/X/A7;Lcom/facebook/ads/redexgen/X/px;Lcom/facebook/ads/redexgen/X/gK;Lcom/facebook/ads/redexgen/X/A6;Lcom/facebook/ads/redexgen/X/po;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/pm;

.field public final synthetic A02:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/pm;ILjava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 103137
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/pn;->A01:Lcom/facebook/ads/redexgen/X/pm;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/pn;->A00:I

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/pn;->A02:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vl;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 103138
    .local v0, "this":Lcom/facebook/ads/redexgen/X/pn;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/pn;->A01:Lcom/facebook/ads/redexgen/X/pm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/pm;->A09(Lcom/facebook/ads/redexgen/X/pm;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103139
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/A8;->A07:Z

    if-eqz v0, :cond_1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/pn;->A01:Lcom/facebook/ads/redexgen/X/pm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/pm;->A0A(Lcom/facebook/ads/redexgen/X/pm;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103140
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/pn;->A01:Lcom/facebook/ads/redexgen/X/pm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/pm;->A0C()V

    .line 103141
    return-void

    .line 103142
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/pn;
    :cond_1
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/pn;->A01:Lcom/facebook/ads/redexgen/X/pm;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/pn;->A01:Lcom/facebook/ads/redexgen/X/pm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/pm;->A02(Lcom/facebook/ads/redexgen/X/pm;)Lcom/facebook/ads/redexgen/X/gK;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/gK;->AC6()J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/pm;->A06(Lcom/facebook/ads/redexgen/X/pm;J)V

    .line 103143
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/pn;->A01:Lcom/facebook/ads/redexgen/X/pm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/pm;->A01(Lcom/facebook/ads/redexgen/X/pm;)Landroid/os/Handler;

    move-result-object v3

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/pn;->A01:Lcom/facebook/ads/redexgen/X/pm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/pm;->A03(Lcom/facebook/ads/redexgen/X/pm;)Ljava/lang/Runnable;

    move-result-object v2

    iget v0, v4, Lcom/facebook/ads/redexgen/X/pn;->A00:I

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103144
    :cond_2
    return-void
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103145
    :catch_0
    move-exception v1

    .line 103146
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/pn;->A02:Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 103147
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103148
    :catchall_0
    move-exception v0

    .end local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/Vl;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
