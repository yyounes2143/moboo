.class public final Lcom/facebook/ads/redexgen/X/8m;
.super Landroid/media/AudioTrack$StreamEventCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/8n;-><init>(Lcom/facebook/ads/redexgen/X/mw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/8n;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/mw;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 490
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "8abdE8ICHAnxwFMUcOcB2jRAyUCGhoJo"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "eSG1FX4JUeB6EOGXBLLAS9lOPW1"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "25OZd6V"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "MAJYraeiFmbj"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "mUQNxKLiPMNWcUO6nW3zZtqSV9cqGhZ8"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "VvmkF0iz3WmQeVV4Hfojcs5Qu1q9OORp"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "gntz5ah2KiglLn2nngo2Gr7V9oibD8w7"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "BsUxp7JWgCvt"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/8m;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8n;Lcom/facebook/ads/redexgen/X/mw;)V
    .locals 0

    .line 23905
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8m;->A00:Lcom/facebook/ads/redexgen/X/8n;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/8m;->A01:Lcom/facebook/ads/redexgen/X/mw;

    invoke-direct {p0}, Landroid/media/AudioTrack$StreamEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataRequest(Landroid/media/AudioTrack;I)V
    .locals 4

    .line 23906
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8m;->A00:Lcom/facebook/ads/redexgen/X/8n;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8n;->A02:Lcom/facebook/ads/redexgen/X/mw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/mw;->A0H(Lcom/facebook/ads/redexgen/X/mw;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23907
    return-void

    .line 23908
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8m;->A00:Lcom/facebook/ads/redexgen/X/8n;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8n;->A02:Lcom/facebook/ads/redexgen/X/mw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/mw;->A0J(Lcom/facebook/ads/redexgen/X/mw;)Lcom/facebook/ads/redexgen/X/8J;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8m;->A00:Lcom/facebook/ads/redexgen/X/8n;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/8n;->A02:Lcom/facebook/ads/redexgen/X/mw;

    sget-object v2, Lcom/facebook/ads/redexgen/X/8m;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/8m;->A02:[Ljava/lang/String;

    const-string v1, "JFsW9FWtG581w4rAGivIJch2V9mOeS5l"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/mw;->A0n(Lcom/facebook/ads/redexgen/X/mw;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23909
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8m;->A00:Lcom/facebook/ads/redexgen/X/8n;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8n;->A02:Lcom/facebook/ads/redexgen/X/mw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/mw;->A0J(Lcom/facebook/ads/redexgen/X/mw;)Lcom/facebook/ads/redexgen/X/8J;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8J;->AEN()V

    .line 23910
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onTearDown(Landroid/media/AudioTrack;)V
    .locals 4

    .line 23911
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8m;->A00:Lcom/facebook/ads/redexgen/X/8n;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8n;->A02:Lcom/facebook/ads/redexgen/X/mw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/mw;->A0H(Lcom/facebook/ads/redexgen/X/mw;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23912
    return-void

    .line 23913
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8m;->A00:Lcom/facebook/ads/redexgen/X/8n;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8n;->A02:Lcom/facebook/ads/redexgen/X/mw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/mw;->A0J(Lcom/facebook/ads/redexgen/X/mw;)Lcom/facebook/ads/redexgen/X/8J;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/8m;->A00:Lcom/facebook/ads/redexgen/X/8n;

    sget-object v2, Lcom/facebook/ads/redexgen/X/8m;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/8m;->A02:[Ljava/lang/String;

    const-string v1, "n6LYwQPnbsiV"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "LQIZIXydZbX4"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/8n;->A02:Lcom/facebook/ads/redexgen/X/mw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/mw;->A0n(Lcom/facebook/ads/redexgen/X/mw;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23914
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8m;->A00:Lcom/facebook/ads/redexgen/X/8n;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8n;->A02:Lcom/facebook/ads/redexgen/X/mw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/mw;->A0J(Lcom/facebook/ads/redexgen/X/mw;)Lcom/facebook/ads/redexgen/X/8J;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8J;->AEN()V

    .line 23915
    :cond_2
    return-void
.end method
