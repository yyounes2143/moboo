.class public final Lcom/facebook/ads/redexgen/X/bn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Sh;


# static fields
.field public static A04:[B


# instance fields
.field public A00:Landroid/content/Context;

.field public A01:Lcom/facebook/ads/redexgen/X/Se;

.field public final A02:Lcom/facebook/ads/redexgen/X/Sg;

.field public final A03:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bn;->A03()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Sg;)V
    .locals 2

    .line 77164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77165
    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bn;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77166
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bn;->A00:Landroid/content/Context;

    .line 77167
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bn;->A02:Lcom/facebook/ads/redexgen/X/Sg;

    .line 77168
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bn;->A00()Lcom/facebook/ads/redexgen/X/Se;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bn;->A01:Lcom/facebook/ads/redexgen/X/Se;

    .line 77169
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/Se;
    .locals 4

    .line 77170
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bn;->A00:Landroid/content/Context;

    .line 77171
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ve;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x10

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bn;->A01(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77172
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Se;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Se;

    move-result-object v0

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/bn;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x51

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 2

    .line 77173
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bn;->A02:Lcom/facebook/ads/redexgen/X/Sg;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ci;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ci;-><init>(Lcom/facebook/ads/redexgen/X/bn;)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Sg;->ABw(Lcom/facebook/ads/redexgen/X/Sf;)V

    .line 77174
    return-void
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bn;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x71t
        0x65t
        0x7at
        0x6at
        0x66t
        0x70t
        0x61t
        0x61t
        0x7ct
        0x7bt
        0x72t
        0x66t
        0x6at
        0x7et
        0x70t
        0x6ct
    .end array-data
.end method


# virtual methods
.method public final A04([Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 5

    .line 77175
    new-instance v1, Lcom/facebook/ads/redexgen/X/Se;

    invoke-direct {v1, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Se;-><init>([Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 77176
    .local v0, "newSettings":Lcom/facebook/ads/redexgen/X/Se;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bn;->A01:Lcom/facebook/ads/redexgen/X/Se;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Se;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77177
    return-void

    .line 77178
    :cond_0
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/bn;->A01:Lcom/facebook/ads/redexgen/X/Se;

    .line 77179
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bn;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 77180
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bn;->A00:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ve;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 77181
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bn;->A01:Lcom/facebook/ads/redexgen/X/Se;

    .line 77182
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Se;->A07()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x10

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bn;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 77183
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 77184
    return-void
.end method

.method public final A7c()Lcom/facebook/ads/redexgen/X/Se;
    .locals 1

    .line 77185
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bn;->A02()V

    .line 77186
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bn;->A01:Lcom/facebook/ads/redexgen/X/Se;

    return-object v0
.end method

.method public final AAY()Z
    .locals 4

    .line 77187
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bn;->A02()V

    .line 77188
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bn;->A01:Lcom/facebook/ads/redexgen/X/Se;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 77189
    return v3

    .line 77190
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bn;->A00:Landroid/content/Context;

    .line 77191
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A0a(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    .line 77192
    .local v0, "restrictedCombinations":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bn;->A01:Lcom/facebook/ads/redexgen/X/Se;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Se;->A07()Ljava/lang/String;

    move-result-object v2

    .line 77193
    .local v2, "identifier":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77194
    .local p0, "restrictedCombination":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77195
    const/4 v0, 0x1

    return v0

    .line 77196
    :cond_2
    return v3
.end method

.method public final AJC()Z
    .locals 2

    .line 77197
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bn;->A02()V

    .line 77198
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bn;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    return v0
.end method
