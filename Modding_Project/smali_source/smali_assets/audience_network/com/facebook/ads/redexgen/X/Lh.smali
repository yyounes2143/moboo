.class public final Lcom/facebook/ads/redexgen/X/Lh;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Lj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HttpPriority"
.end annotation


# static fields
.field public static final A02:Lcom/facebook/ads/redexgen/X/Lh;


# instance fields
.field public A00:B

.field public A01:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1329
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lh;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Lh;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Lh;->A02:Lcom/facebook/ads/redexgen/X/Lh;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51185
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A00:B

    .line 51186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A01:Z

    .line 51187
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 51188
    const/4 v2, 0x1

    if-ne p1, p0, :cond_0

    .line 51189
    return v2

    .line 51190
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 51191
    return v1

    .line 51192
    :cond_1
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/Lh;

    if-eqz v0, :cond_3

    .line 51193
    check-cast p1, Lcom/facebook/ads/redexgen/X/Lh;

    .line 51194
    .local v2, "otherPriority":Lcom/facebook/ads/redexgen/X/Lh;
    iget-byte v1, p0, Lcom/facebook/ads/redexgen/X/Lh;->A00:B

    iget-byte v0, p1, Lcom/facebook/ads/redexgen/X/Lh;->A00:B

    if-ne v1, v0, :cond_2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Lh;->A01:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Lh;->A01:Z

    if-ne v1, v0, :cond_2

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 51195
    .end local v2    # "otherPriority":Lcom/facebook/ads/redexgen/X/Lh;
    :cond_3
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 51196
    iget-byte v1, p0, Lcom/facebook/ads/redexgen/X/Lh;->A00:B

    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0}, Ljava/lang/Byte;->hashCode()I

    move-result v2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Lh;->A01:Z

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    return v2
.end method
