.class public interface abstract annotation Lcom/didi/drouter/annotation/Router;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/didi/drouter/annotation/Router;
        hold = false
        host = ""
        interceptor = {}
        interceptorName = {}
        path = ""
        priority = 0x0
        scheme = ""
        thread = 0x0
        uri = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract hold()Z
.end method

.method public abstract host()Ljava/lang/String;
.end method

.method public abstract interceptor()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/didi/drouter/router/IRouterInterceptor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract interceptorName()[Ljava/lang/String;
.end method

.method public abstract path()Ljava/lang/String;
.end method

.method public abstract priority()I
.end method

.method public abstract scheme()Ljava/lang/String;
.end method

.method public abstract thread()I
.end method

.method public abstract uri()Ljava/lang/String;
.end method
