.class public Lcom/didi/drouter/store/RouterMeta;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static Wwwwwwwww:Ljava/util/regex/Pattern; = null

.field public static Wwwwwwwwww:Ljava/lang/String; = "<[a-zA-Z_]+\\w*>"

.field public static Wwwwwwwwwww:I = 0x6

.field public static Wwwwwwwwwwww:I = 0x5

.field public static Wwwwwwwwwwwww:I = 0x4


# instance fields
.field public Wwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwww:Ljava/lang/Object;

.field public Wwwwwwwwwwwwwwwww:Lcom/didi/drouter/service/IFeatureMatcher;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/didi/drouter/service/IFeatureMatcher<",
            "*>;"
        }
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public Wwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/IRouterHandler;

.field public Wwwwwwwwwwwwwwwwwwww:Landroid/content/Intent;

.field public Wwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/Class;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/didi/drouter/router/IRouterInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/Boolean;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/store/IRouterProxy;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "<[a-zA-Z_]+\\w*>"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwww:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    new-array v0, v0, [Ljava/lang/Boolean;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/Boolean;

    .line 8
    .line 9
    iput p1, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 10
    .line 11
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Lcom/didi/drouter/store/RouterMeta;
    .locals 1

    .line 1
    new-instance v0, Lcom/didi/drouter/store/RouterMeta;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/didi/drouter/store/RouterMeta;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public Wwwww(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 5
    .line 6
    return-void
.end method

.method public Wwwwww(Lcom/didi/drouter/router/IRouterHandler;)V
    .locals 0
    .param p1    # Lcom/didi/drouter/router/IRouterHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/IRouterHandler;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 5
    .line 6
    return-void
.end method

.method public Wwwwwww()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/didi/drouter/utils/TextUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/didi/drouter/utils/TextUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/didi/drouter/utils/TextUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    return v0

    .line 28
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 29
    return v0
.end method

.method public Wwwwwwww(Landroid/net/Uri;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/didi/drouter/utils/TextUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/didi/drouter/utils/TextUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/didi/drouter/utils/TextUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v2, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {p0, v3, v2}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwww(ILjava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const-string v4, "[^/]*"

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    iget-object v2, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 37
    .line 38
    sget-object v5, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwww:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v2, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 46
    .line 47
    :goto_0
    iget-object v5, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 48
    .line 49
    const/4 v6, 0x1

    .line 50
    invoke-virtual {p0, v6, v5}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwww(ILjava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_1

    .line 55
    .line 56
    iget-object v5, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 57
    .line 58
    sget-object v7, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwww:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v5, v7, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    iget-object v5, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 66
    .line 67
    :goto_1
    const/4 v7, 0x2

    .line 68
    iget-object v8, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {p0, v7, v8}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwww(ILjava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-eqz v7, :cond_2

    .line 75
    .line 76
    iget-object v7, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 77
    .line 78
    sget-object v8, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwww:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v7, v8, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    iget-object v4, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 86
    .line 87
    :goto_2
    if-eqz v0, :cond_3

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    if-eqz v1, :cond_3

    .line 96
    .line 97
    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_3

    .line 102
    .line 103
    if-eqz p1, :cond_3

    .line 104
    .line 105
    invoke-virtual {p1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_3

    .line 110
    .line 111
    return v6

    .line 112
    :cond_3
    return v3
.end method

.method public Wwwwwwwww()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return v0
.end method

.method public Wwwwwwwwww()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return v0
.end method

.method public Wwwwwwwwwww()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return v0
.end method

.method public Wwwwwwwwwwww(Landroid/net/Uri;Landroid/os/Bundle;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p0, v2, v0, v1, p2}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwww(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-virtual {p0, v3, v0, v1, p2}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwww(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v1, 0x2

    .line 34
    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwww(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    return v3

    .line 41
    :cond_0
    return v2
.end method

.method public final Wwwwwwwwwwwww(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 15
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-virtual/range {p0 .. p2}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwww(ILjava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    const/4 v5, 0x1

    .line 12
    if-eqz v4, :cond_7

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_4

    .line 17
    .line 18
    :cond_0
    new-instance v4, Landroid/os/Bundle;

    .line 19
    .line 20
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v6, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v7, "@@"

    .line 29
    .line 30
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v8, "$$"

    .line 37
    .line 38
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    new-instance v9, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    sget-object v8, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwww:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    move v9, v3

    .line 70
    :goto_0
    array-length v10, v8

    .line 71
    if-ge v9, v10, :cond_6

    .line 72
    .line 73
    add-int/lit8 v10, v9, 0x1

    .line 74
    .line 75
    array-length v11, v8

    .line 76
    if-ge v10, v11, :cond_5

    .line 77
    .line 78
    aget-object v9, v8, v9

    .line 79
    .line 80
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 81
    .line 82
    .line 83
    move-result v11

    .line 84
    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v11

    .line 92
    if-nez v11, :cond_1

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    sget-object v9, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwww:Ljava/util/regex/Pattern;

    .line 104
    .line 105
    invoke-virtual {v9, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    const-string v12, ""

    .line 114
    .line 115
    if-eqz v11, :cond_2

    .line 116
    .line 117
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    goto :goto_1

    .line 122
    :cond_2
    move-object v9, v12

    .line 123
    :goto_1
    const-string v11, "<"

    .line 124
    .line 125
    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    const-string v13, ">"

    .line 130
    .line 131
    invoke-virtual {v11, v13, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v11

    .line 135
    aget-object v12, v8, v10

    .line 136
    .line 137
    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    move-result v12

    .line 141
    invoke-virtual {v7, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v13

    .line 145
    invoke-static {v11}, Lcom/didi/drouter/utils/TextUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/CharSequence;)Z

    .line 146
    .line 147
    .line 148
    move-result v14

    .line 149
    if-eqz v14, :cond_3

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_3
    invoke-virtual {v4, v11, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    :cond_4
    move-object/from16 v9, p4

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_5
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v9

    .line 174
    if-eqz v9, :cond_4

    .line 175
    .line 176
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    const-string v7, "inject <> success, annoPart=%s, uriPart=%s, result=%s"

    .line 181
    .line 182
    const/4 v8, 0x3

    .line 183
    new-array v8, v8, [Ljava/lang/Object;

    .line 184
    .line 185
    aput-object v0, v8, v3

    .line 186
    .line 187
    aput-object v1, v8, v5

    .line 188
    .line 189
    aput-object v4, v8, v2

    .line 190
    .line 191
    invoke-virtual {v6, v7, v8}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    move-object/from16 v9, p4

    .line 195
    .line 196
    invoke-virtual {v9, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 197
    .line 198
    .line 199
    return v5

    .line 200
    :goto_2
    move v9, v10

    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :cond_6
    :goto_3
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    const-string v6, "inject place holder error, annoPart=%s, uriPart=%s"

    .line 208
    .line 209
    new-array v2, v2, [Ljava/lang/Object;

    .line 210
    .line 211
    aput-object v0, v2, v3

    .line 212
    .line 213
    aput-object v1, v2, v5

    .line 214
    .line 215
    invoke-virtual {v4, v6, v2}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    return v3

    .line 219
    :cond_7
    :goto_4
    return v5
.end method

.method public final Wwwwwwwwwwwwww(ILjava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/Boolean;

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/Boolean;

    .line 16
    .line 17
    sget-object v1, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwww:Ljava/util/regex/Pattern;

    .line 18
    .line 19
    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    aput-object v1, v0, p1

    .line 32
    .line 33
    return p2
.end method

.method public Wwwwwwwwwwwwwww()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    return v0
.end method

.method public Wwwwwwwwwwwwwwww()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "."

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/IRouterHandler;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v2, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/IRouterHandler;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0

    .line 60
    :cond_2
    const/4 v0, 0x0

    .line 61
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwww()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwww()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    return v0
.end method

.method public Wwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/store/IRouterProxy;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/store/IRouterProxy;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwww()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwww()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    return v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwww()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/didi/drouter/router/IRouterInterceptor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwww()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwww()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwww:Landroid/content/Intent;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/service/IFeatureMatcher;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwww:Lcom/didi/drouter/service/IFeatureMatcher;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/router/IRouterHandler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/IRouterHandler;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwww()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwww:I

    .line 2
    .line 3
    return v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Class;Lcom/didi/drouter/store/IRouterProxy;Ljava/lang/String;Lcom/didi/drouter/service/IFeatureMatcher;II)Lcom/didi/drouter/store/RouterMeta;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/didi/drouter/store/IRouterProxy;",
            "Ljava/lang/String;",
            "Lcom/didi/drouter/service/IFeatureMatcher<",
            "*>;II)",
            "Lcom/didi/drouter/store/RouterMeta;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/store/IRouterProxy;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwww:Lcom/didi/drouter/service/IFeatureMatcher;

    .line 8
    .line 9
    iput p5, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 10
    .line 11
    iput p6, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwww:I

    .line 12
    .line 13
    return-object p0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/didi/drouter/store/IRouterProxy;[Ljava/lang/Class;[Ljava/lang/String;IIZ)Lcom/didi/drouter/store/RouterMeta;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/didi/drouter/store/IRouterProxy;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/didi/drouter/router/IRouterInterceptor;",
            ">;[",
            "Ljava/lang/String;",
            "IIZ)",
            "Lcom/didi/drouter/store/RouterMeta;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/didi/drouter/utils/TextUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p2}, Lcom/didi/drouter/utils/TextUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p3}, Lcom/didi/drouter/utils/TextUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p4, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;

    .line 20
    .line 21
    iput-object p5, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/store/IRouterProxy;

    .line 22
    .line 23
    iput-object p6, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/Class;

    .line 24
    .line 25
    iput-object p7, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/String;

    .line 26
    .line 27
    iput p8, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 28
    .line 29
    iput p9, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 30
    .line 31
    iput-boolean p10, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwww:Z

    .line 32
    .line 33
    return-object p0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Intent;)Lcom/didi/drouter/store/RouterMeta;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwww:Landroid/content/Intent;

    .line 2
    .line 3
    return-object p0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Class;Lcom/didi/drouter/store/IRouterProxy;IZI)Lcom/didi/drouter/store/RouterMeta;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/didi/drouter/router/IRouterInterceptor;",
            ">;",
            "Lcom/didi/drouter/store/IRouterProxy;",
            "IZI)",
            "Lcom/didi/drouter/store/RouterMeta;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/store/IRouterProxy;

    .line 4
    .line 5
    iput p3, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwww:Z

    .line 8
    .line 9
    iput p5, p0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwww:I

    .line 10
    .line 11
    return-object p0
.end method
