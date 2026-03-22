.class public final Lcom/facebook/ads/redexgen/X/CV;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/CW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListenerAndHandler"
.end annotation


# instance fields
.field public A00:Landroid/os/Handler;

.field public A01:Lcom/facebook/ads/redexgen/X/CX;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/CX;)V
    .locals 0

    .line 32906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32907
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CV;->A00:Landroid/os/Handler;

    .line 32908
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/CV;->A01:Lcom/facebook/ads/redexgen/X/CX;

    .line 32909
    return-void
.end method
