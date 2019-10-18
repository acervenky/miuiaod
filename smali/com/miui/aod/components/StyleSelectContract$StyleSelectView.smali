.class public interface abstract Lcom/miui/aod/components/StyleSelectContract$StyleSelectView;
.super Ljava/lang/Object;
.source "StyleSelectContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/components/StyleSelectContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StyleSelectView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StyleSelectPresenter:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public freshStyle(Ljava/lang/String;Lcom/miui/aod/common/StyleInfo;)V
    .locals 0

    return-void
.end method

.method public abstract getPresenter()Lcom/miui/aod/components/BaseStyleSelectPresenter;
.end method

.method public initStyleInfoSelected(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/aod/widget/IAodClock;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public setPresenter(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TStyleSelectPresenter;)V"
        }
    .end annotation

    return-void
.end method

.method public updateTime()V
    .locals 0

    return-void
.end method
