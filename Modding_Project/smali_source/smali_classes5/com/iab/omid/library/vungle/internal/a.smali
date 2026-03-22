.class public Lcom/iab/omid/library/vungle/internal/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iab/omid/library/vungle/internal/d$a;


# static fields
.field public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/internal/a;


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/internal/d;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Date;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/utils/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/iab/omid/library/vungle/internal/a;

    .line 2
    .line 3
    new-instance v1, Lcom/iab/omid/library/vungle/internal/d;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/iab/omid/library/vungle/internal/d;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/iab/omid/library/vungle/internal/a;-><init>(Lcom/iab/omid/library/vungle/internal/d;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/iab/omid/library/vungle/internal/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/internal/a;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/iab/omid/library/vungle/internal/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/iab/omid/library/vungle/utils/f;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/iab/omid/library/vungle/utils/f;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/iab/omid/library/vungle/internal/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/utils/f;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/iab/omid/library/vungle/internal/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/internal/d;

    .line 12
    .line 13
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/vungle/internal/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/iab/omid/library/vungle/internal/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/internal/a;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/vungle/internal/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/utils/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/iab/omid/library/vungle/utils/f;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Date;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/iab/omid/library/vungle/internal/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Date;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-void

    .line 19
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/iab/omid/library/vungle/internal/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Date;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/iab/omid/library/vungle/internal/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/vungle/internal/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/iab/omid/library/vungle/internal/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Date;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-static {}, Lcom/iab/omid/library/vungle/internal/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/vungle/internal/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/iab/omid/library/vungle/internal/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/iab/omid/library/vungle/adsession/a;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/iab/omid/library/vungle/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p0}, Lcom/iab/omid/library/vungle/internal/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Date;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Date;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    :goto_1
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/vungle/internal/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Date;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/util/Date;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/vungle/internal/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/iab/omid/library/vungle/internal/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/internal/d;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/iab/omid/library/vungle/internal/d;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/iab/omid/library/vungle/internal/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/internal/d;

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Lcom/iab/omid/library/vungle/internal/d;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/iab/omid/library/vungle/internal/d$a;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/iab/omid/library/vungle/internal/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/internal/d;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/iab/omid/library/vungle/internal/d;->Wwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/iab/omid/library/vungle/internal/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/internal/d;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/iab/omid/library/vungle/internal/d;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput-boolean p1, p0, Lcom/iab/omid/library/vungle/internal/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/iab/omid/library/vungle/internal/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/vungle/internal/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/iab/omid/library/vungle/internal/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-boolean p1, p0, Lcom/iab/omid/library/vungle/internal/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 11
    .line 12
    return-void
.end method
