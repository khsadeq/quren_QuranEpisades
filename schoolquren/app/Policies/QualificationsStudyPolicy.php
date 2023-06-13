<?php

namespace App\Policies;

use App\Models\User;
use App\Models\qualifications_study;
use Illuminate\Auth\Access\Response;

class QualificationsStudyPolicy
{
    /**
     * Determine whether the user can view any models.
     */
    public function viewAny(User $user): bool
    {
        //
    }

    /**
     * Determine whether the user can view the model.
     */
    public function view(User $user, qualifications_study $qualificationsStudy): bool
    {
        //
    }

    /**
     * Determine whether the user can create models.
     */
    public function create(User $user): bool
    {
        //
    }

    /**
     * Determine whether the user can update the model.
     */
    public function update(User $user, qualifications_study $qualificationsStudy): bool
    {
        //
    }

    /**
     * Determine whether the user can delete the model.
     */
    public function delete(User $user, qualifications_study $qualificationsStudy): bool
    {
        //
    }

    /**
     * Determine whether the user can restore the model.
     */
    public function restore(User $user, qualifications_study $qualificationsStudy): bool
    {
        //
    }

    /**
     * Determine whether the user can permanently delete the model.
     */
    public function forceDelete(User $user, qualifications_study $qualificationsStudy): bool
    {
        //
    }
}
