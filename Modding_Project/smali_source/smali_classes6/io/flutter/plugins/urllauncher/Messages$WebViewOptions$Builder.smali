.class public final Lio/flutter/plugins/urllauncher/Messages$WebViewOptions$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/urllauncher/Messages$WebViewOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private enableDomStorage:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private enableJavaScript:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private headers:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public build()Lio/flutter/plugins/urllauncher/Messages$WebViewOptions;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/urllauncher/Messages$WebViewOptions;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/urllauncher/Messages$WebViewOptions;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/flutter/plugins/urllauncher/Messages$WebViewOptions$Builder;->enableJavaScript:Ljava/lang/Boolean;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/flutter/plugins/urllauncher/Messages$WebViewOptions;->setEnableJavaScript(Ljava/lang/Boolean;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/flutter/plugins/urllauncher/Messages$WebViewOptions$Builder;->enableDomStorage:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/flutter/plugins/urllauncher/Messages$WebViewOptions;->setEnableDomStorage(Ljava/lang/Boolean;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/flutter/plugins/urllauncher/Messages$WebViewOptions$Builder;->headers:Ljava/util/Map;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/flutter/plugins/urllauncher/Messages$WebViewOptions;->setHeaders(Ljava/util/Map;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public setEnableDomStorage(Ljava/lang/Boolean;)Lio/flutter/plugins/urllauncher/Messages$WebViewOptions$Builder;
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lio/flutter/plugins/urllauncher/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/urllauncher/Messages$WebViewOptions$Builder;->enableDomStorage:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setEnableJavaScript(Ljava/lang/Boolean;)Lio/flutter/plugins/urllauncher/Messages$WebViewOptions$Builder;
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lio/flutter/plugins/urllauncher/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/urllauncher/Messages$WebViewOptions$Builder;->enableJavaScript:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setHeaders(Ljava/util/Map;)Lio/flutter/plugins/urllauncher/Messages$WebViewOptions$Builder;
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/flutter/plugins/urllauncher/Messages$WebViewOptions$Builder;"
        }
    .end annotation

    .annotation build Lio/flutter/plugins/urllauncher/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/urllauncher/Messages$WebViewOptions$Builder;->headers:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method
