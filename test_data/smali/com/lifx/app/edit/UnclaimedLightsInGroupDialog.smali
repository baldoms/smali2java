.class public Lcom/lifx/app/edit/UnclaimedLightsInGroupDialog;
.super Landroid/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 42
    if-nez p0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 47
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 48
    new-instance v2, Lcom/lifx/app/edit/UnclaimedLightsInGroupDialog;

    invoke-direct {v2}, Lcom/lifx/app/edit/UnclaimedLightsInGroupDialog;-><init>()V

    .line 49
    invoke-virtual {v2, v1}, Lcom/lifx/app/edit/UnclaimedLightsInGroupDialog;->setArguments(Landroid/os/Bundle;)V

    .line 50
    const-string v1, "UNCALIMED_LIGHTS_IN_GROUP"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 52
    const-string v1, "UNCALIMED_LIGHTS_IN_GROUP"

    invoke-virtual {v2, v0, v1}, Lcom/lifx/app/edit/UnclaimedLightsInGroupDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/lifx/app/edit/UnclaimedLightsInGroupDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 60
    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    sget-object v1, Lcom/lifx/lifx/util/NetworkUtil;->a:Lcom/lifx/lifx/util/NetworkUtil;

    const-string v2, "http://hosted.lifx.co/applinks/v2/support/cant-edit-guest-group"

    const/4 v3, 0x0

    new-array v3, v3, [I

    invoke-virtual {v1, v0, v2, v3}, Lcom/lifx/lifx/util/NetworkUtil;->a(Landroid/content/Context;Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/lifx/app/edit/UnclaimedLightsInGroupDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 29
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 30
    const v0, 0x7f0a02df

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0a0386

    const/4 v3, 0x0

    .line 31
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0a02e6

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 33
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
