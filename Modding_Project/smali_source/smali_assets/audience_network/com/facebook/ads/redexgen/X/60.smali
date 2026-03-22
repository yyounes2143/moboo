.class public final Lcom/facebook/ads/redexgen/X/60;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/9X;-><init>([Lcom/facebook/ads/redexgen/X/nM;Lcom/facebook/ads/redexgen/X/EK;Lcom/facebook/ads/redexgen/X/6S;Lcom/facebook/ads/redexgen/X/EU;Lcom/facebook/ads/redexgen/X/3T;ZZZZZZJZIZZZZZZZLcom/facebook/ads/redexgen/X/2z;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/9X;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9X;Landroid/os/Looper;)V
    .locals 0

    .line 17200
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/60;->A00:Lcom/facebook/ads/redexgen/X/9X;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vl;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    .line 17201
    .local v0, "this":Lcom/facebook/ads/redexgen/X/60;
    .local p1, "msg":Landroid/os/Message;
    :try_start_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/60;->A00:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9X;->A0N(Landroid/os/Message;)V

    .line 17202
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/60;
    .end local p1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Vl;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
