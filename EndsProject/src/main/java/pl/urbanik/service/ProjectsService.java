package pl.urbanik.service;

import org.springframework.stereotype.Service;
import pl.urbanik.model.Projects;

import java.util.List;

@Service
public interface ProjectsService {
    void saveProject(Projects projects);

    List<Projects> listAllProjects();

    Projects getProject(Long id);

    void deleteProject(Long id);
}
