.class public final Lcom/facebook/ads/redexgen/X/UK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/VM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdRecord"
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Nc;

.field public final A01:J

.field public final A02:Landroid/os/Messenger;

.field public final A03:Ljava/lang/String;

.field public final A04:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Messenger;Ljava/lang/String;)V
    .locals 2

    .line 67448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/UK;->A01:J

    .line 67450
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UK;->A03:Ljava/lang/String;

    .line 67451
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/UK;->A02:Landroid/os/Messenger;

    .line 67452
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/UK;->A04:Ljava/lang/String;

    .line 67453
    return-void
.end method
