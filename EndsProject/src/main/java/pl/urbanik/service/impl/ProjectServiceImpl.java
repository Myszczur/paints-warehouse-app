package pl.urbanik.service.impl;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.urbanik.model.Projects;
import pl.urbanik.repository.ProjectsRepository;
import pl.urbanik.service.ProjectsService;

import java.time.format.DateTimeFormatter;
import java.util.List;

@Service
@RequiredArgsConstructor
public class ProjectServiceImpl implements ProjectsService {

    private final ProjectsRepository projectsRepository;


    @Override
    public void saveProject(Projects projects) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy/MM/dd");
        formatter.format(projects.getStartDate());
        projectsRepository.save(projects);
    }

    @Override
    public List<Projects> listAllProjects() {
        return projectsRepository.findAll();
    }

    @Override
    public Projects getProject(Long id) {
        return projectsRepository.getOne(id);
    }

    @Override
    public void deleteProject(Long id) {
        projectsRepository.deleteById(id);
    }
}
