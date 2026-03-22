.class public Lcom/iab/omid/library/vungle/internal/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iab/omid/library/vungle/internal/d$a;
.implements Lcom/iab/omid/library/vungle/devicevolume/c;


# static fields
.field public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/internal/i;


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/internal/c;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/devicevolume/d;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/devicevolume/b;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/devicevolume/e;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:F


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/vungle/devicevolume/e;Lcom/iab/omid/library/vungle/devicevolume/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/iab/omid/library/vungle/internal/i;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:F

    .line 6
    .line 7
    iput-object p1, p0, Lcom/iab/omid/library/vungle/internal/i;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/devicevolume/e;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/iab/omid/library/vungle/internal/i;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/devicevolume/b;

    .line 10
    .line 11
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/vungle/internal/i;
    .locals 3

    .line 1
    sget-object v0, Lcom/iab/omid/library/vungle/internal/i;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/internal/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/iab/omid/library/vungle/devicevolume/b;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/iab/omid/library/vungle/devicevolume/b;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/iab/omid/library/vungle/devicevolume/e;

    .line 11
    .line 12
    invoke-direct {v1}, Lcom/iab/omid/library/vungle/devicevolume/e;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/iab/omid/library/vungle/internal/i;

    .line 16
    .line 17
    invoke-direct {v2, v1, v0}, Lcom/iab/omid/library/vungle/internal/i;-><init>(Lcom/iab/omid/library/vungle/devicevolume/e;Lcom/iab/omid/library/vungle/devicevolume/b;)V

    .line 18
    .line 19
    .line 20
    sput-object v2, Lcom/iab/omid/library/vungle/internal/i;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/internal/i;

    .line 21
    .line 22
    :cond_0
    sget-object v0, Lcom/iab/omid/library/vungle/internal/i;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/internal/i;

    .line 23
    .line 24
    return-object v0
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/iab/omid/library/vungle/walking/TreeWalker;->Wwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/vungle/walking/TreeWalker;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/iab/omid/library/vungle/walking/TreeWalker;->Wwwwwwwwwwwwwwww()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/iab/omid/library/vungle/internal/b;->Wwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/vungle/internal/b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/iab/omid/library/vungle/internal/d;->Wwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/iab/omid/library/vungle/internal/i;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/devicevolume/d;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/iab/omid/library/vungle/devicevolume/d;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/iab/omid/library/vungle/internal/b;->Wwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/vungle/internal/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/iab/omid/library/vungle/internal/d;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/iab/omid/library/vungle/internal/d$a;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/iab/omid/library/vungle/internal/b;->Wwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/vungle/internal/b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/iab/omid/library/vungle/internal/d;->Wwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/iab/omid/library/vungle/walking/TreeWalker;->Wwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/vungle/walking/TreeWalker;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/iab/omid/library/vungle/walking/TreeWalker;->Wwwwwwwwwwwwwwwwww()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/iab/omid/library/vungle/internal/i;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/devicevolume/d;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/iab/omid/library/vungle/devicevolume/d;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/iab/omid/library/vungle/internal/i;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:F

    .line 2
    .line 3
    return v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/vungle/internal/i;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/devicevolume/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/iab/omid/library/vungle/devicevolume/b;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/vungle/devicevolume/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/iab/omid/library/vungle/internal/i;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/devicevolume/e;

    .line 8
    .line 9
    new-instance v2, Landroid/os/Handler;

    .line 10
    .line 11
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2, p1, v0, p0}, Lcom/iab/omid/library/vungle/devicevolume/e;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/os/Handler;Landroid/content/Context;Lcom/iab/omid/library/vungle/devicevolume/a;Lcom/iab/omid/library/vungle/devicevolume/c;)Lcom/iab/omid/library/vungle/devicevolume/d;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/iab/omid/library/vungle/internal/i;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/devicevolume/d;

    .line 19
    .line 20
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/vungle/internal/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/vungle/internal/i;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/internal/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/iab/omid/library/vungle/internal/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/vungle/internal/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/iab/omid/library/vungle/internal/i;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/internal/c;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/vungle/internal/i;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/internal/c;

    .line 12
    .line 13
    return-object v0
.end method

.method public a(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/iab/omid/library/vungle/internal/i;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:F

    invoke-virtual {p0}, Lcom/iab/omid/library/vungle/internal/i;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/vungle/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/vungle/internal/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iab/omid/library/vungle/adsession/a;

    invoke-virtual {v1}, Lcom/iab/omid/library/vungle/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 2
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/iab/omid/library/vungle/walking/TreeWalker;->Wwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/vungle/walking/TreeWalker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iab/omid/library/vungle/walking/TreeWalker;->Wwwwwwwwwwwwwwwwww()V

    return-void

    :cond_0
    invoke-static {}, Lcom/iab/omid/library/vungle/walking/TreeWalker;->Wwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/vungle/walking/TreeWalker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iab/omid/library/vungle/walking/TreeWalker;->Wwwwwwwwwwwwwwwwwwww()V

    return-void
.end method
