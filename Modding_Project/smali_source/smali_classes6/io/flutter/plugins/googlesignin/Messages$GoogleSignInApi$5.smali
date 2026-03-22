.class Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi$5;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lio/flutter/plugins/googlesignin/Messages$VoidResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi$-CC;->Wwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$reply:Lio/flutter/plugin/common/BasicMessageChannel$Reply;

.field final synthetic val$wrapped:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi$5;->val$wrapped:Ljava/util/ArrayList;

    .line 2
    .line 3
    iput-object p2, p0, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi$5;->val$reply:Lio/flutter/plugin/common/BasicMessageChannel$Reply;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lio/flutter/plugins/googlesignin/Messages;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi$5;->val$reply:Lio/flutter/plugin/common/BasicMessageChannel$Reply;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public success()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi$5;->val$wrapped:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi$5;->val$reply:Lio/flutter/plugin/common/BasicMessageChannel$Reply;

    .line 9
    .line 10
    iget-object v1, p0, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi$5;->val$wrapped:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-interface {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
